package epam.project.bookshop.command.impl;

import epam.project.bookshop.command.Command;
import epam.project.bookshop.exception.CommandException;
import epam.project.bookshop.exception.ServiceException;
import epam.project.bookshop.service.BookService;
import epam.project.bookshop.service.impl.AttachmentServiceImpl;
import epam.project.bookshop.service.impl.BookServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import static epam.project.bookshop.command.ParameterName.*;
import static epam.project.bookshop.command.WebPageName.BOOK_CREATE_PAGE;
import static epam.project.bookshop.command.WebPageName.BOOK_PAGE;

public class AddBookCommand implements Command {
    private static final Logger logger = LogManager.getLogger();

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        Map<String, String> bookMap = new HashMap<>();
        bookMap.put(BOOK_NAME, request.getParameter(BOOK_NAME));
        bookMap.put(BOOK_ISBN, request.getParameter(BOOK_ISBN));
        bookMap.put(BOOK_PUBLISHER_NAME, request.getParameter(BOOK_PUBLISHER_NAME));
        bookMap.put(BOOK_PUBLISHING_YEAR, request.getParameter(BOOK_PUBLISHING_YEAR));
        bookMap.put(BOOK_PRICE, request.getParameter(BOOK_PRICE));
        bookMap.put(BOOK_TOTAL, request.getParameter(BOOK_TOTAL));
        bookMap.put(AUTHOR_ID, Arrays.toString(request.getParameterValues(AUTHOR_ID)));
        bookMap.put(GENRE_ID, Arrays.toString(request.getParameterValues(GENRE_ID)));

        try {
            Part part = request.getPart(ATTACHMENT);
            bookMap.put(ATTACHMENT_CONTENT_TYPE, part.getContentType());
            bookMap.put(ATTACHMENT_NAME, part.getSubmittedFileName());
        } catch (IOException | ServletException e) {
            logger.error(e);
            throw new CommandException(e);
        }

        System.out.println(bookMap);

        BookService bookService = BookServiceImpl.getInstance();

        // todo i can`t post part to bookService

        try {
            if (bookService.add(bookMap)) {

                try {
                    AttachmentServiceImpl attachmentService = AttachmentServiceImpl.getInstance();
                    attachmentService.addFile(request.getPart("file"));
                } catch (ServiceException | IOException | ServletException e) {
                    logger.error("Image is not added");
                    throw new CommandException(e);
                }

                return BOOK_PAGE;
            } else {

                for (Map.Entry<String, String> entry : bookMap.entrySet()) {
                    request.setAttribute(entry.getKey(), entry.getValue());
                }

                return BOOK_CREATE_PAGE;
            }
        } catch (ServiceException e) {
            logger.error("Book is not added:");
            throw new CommandException(e);
        }
    }
}
