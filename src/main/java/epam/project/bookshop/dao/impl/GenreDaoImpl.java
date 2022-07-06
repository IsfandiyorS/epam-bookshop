package epam.project.bookshop.dao.impl;

import epam.project.bookshop.dao.GenreDao;
import epam.project.bookshop.entity.Genre;
import epam.project.bookshop.exception.DaoException;
import epam.project.bookshop.mapper.GenreMapper;
import epam.project.bookshop.pool.ConnectionPool;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@FieldDefaults(level = AccessLevel.PRIVATE)
public class GenreDaoImpl implements GenreDao {

    public static final Logger logger = LogManager.getLogger();

    private static final String SELECT_BY_GENRE_NAME = "SELECT id, name FROM genre WHERE name = ? AND deleted = false";
    private static final String SELECT_BY_ID = "SELECT id, name FROM genre WHERE  id = ? AND deleted = false";
    private static final String SELECT_ALL = "SELECT id, name FROM genre WHERE deleted = false order by id";
    private static final String DELETE_GENRE_BY_ID = "UPDATE genre SET deleted = true WHERE id =? AND deleted = false";
    private static final String UPDATE_GENRE_BY_ID = "UPDATE genre SET name = ?, updated_time = now() WHERE id =? AND deleted = false";
    private static final String INSERT_GENRE = "INSERT INTO genre(name) VALUES (?)";
    private static final String ATTACH_BOOK_TO_GENRE = "INSERT INTO genre_book_list(genre_id, book_id) VALUES (?, ?)";

    private static GenreDaoImpl instance;

    public static GenreDaoImpl getInstance() {
        if (instance == null) {
            instance = new GenreDaoImpl();
        }
        return instance;
    }

    @Override
    public boolean save(Genre genre) throws DaoException {

        try (Connection connection=ConnectionPool.getInstance().getConnection();
                PreparedStatement statement = connection.prepareStatement(INSERT_GENRE)) {

            statement.setString(1, genre.getName().toLowerCase());
            int numberOfRow = statement.executeUpdate();

            return numberOfRow > 0;
        } catch (SQLException e) {
            logger.error(e);
            throw new DaoException(e);
        }
    }

    @Override
    public boolean updated(String genre, Long id) throws DaoException {
        try (Connection connection=ConnectionPool.getInstance().getConnection();
                PreparedStatement statement = connection.prepareStatement(UPDATE_GENRE_BY_ID)) {

            statement.setString(1, genre.toLowerCase());
            statement.setLong(2, id);

            int resultSet=statement.executeUpdate();

            return resultSet>0;

        } catch (SQLException e) {
            logger.error("Genre does not updated by this id: " + id);
            throw new DaoException(e);
        }
    }

    @Override
    public boolean deleteById(Long id) throws DaoException {
        try (Connection connection=ConnectionPool.getInstance().getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_GENRE_BY_ID)) {

            statement.setLong(1, id);

            int resultSet=statement.executeUpdate();

            return resultSet>0;

        } catch (SQLException e) {
            logger.error("Genre does not deleted bi this id: " + id);
            throw new DaoException(e);
        }
    }

    @Override
    public Optional<Genre> findById(Long id) throws DaoException {

        try (Connection connection=ConnectionPool.getInstance().getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID)) {

            statement.setObject(1, id);

            ResultSet resultSet = statement.executeQuery();
            Genre genre = new Genre();
            while (resultSet.next()) {
                genre = GenreMapper.getInstance().resultSetToEntity(resultSet);
            }

            if (genre.getName() != null) {
                return Optional.of(genre);
            } else return Optional.empty();

        } catch (SQLException e) {
            logger.info("Genre not found!");
            throw new DaoException(e);
        }
    }

    @Override
    public List<Genre> findAll() throws DaoException {
        List<Genre> genreList = new ArrayList<>();

        try ( Connection connection=ConnectionPool.getInstance().getConnection();
                PreparedStatement statement = connection.prepareStatement(SELECT_ALL)) {

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                genreList.add(GenreMapper.getInstance().resultSetToEntity(resultSet));
            }

        } catch (SQLException e) {
            throw new DaoException(e);
        }
        return genreList;
    }

    @Override
    public Optional<Genre> findByName(String name) throws DaoException {

        try (Connection connection=ConnectionPool.getInstance().getConnection();
                PreparedStatement statement =connection.prepareStatement(SELECT_BY_GENRE_NAME)) {

            statement.setObject(1, name.toLowerCase());

            ResultSet resultSet = statement.executeQuery();
            Genre genre = new Genre();

            while (resultSet.next()) {
                genre = GenreMapper.getInstance().resultSetToEntity(resultSet);
            }
            logger.info(genre);

            if (genre.getName() != null) {
                return Optional.of(genre);
            } else return Optional.empty();

        } catch (SQLException e) {
            logger.info("Genre not found!");
            throw new DaoException(e);
        }
    }

    @Override
    public boolean attachBookToGenre(Long bookId, Long genreId, boolean isToUpdate) throws DaoException {

        try (Connection connection=ConnectionPool.getInstance().getConnection();
            PreparedStatement statement=connection.prepareStatement(ATTACH_BOOK_TO_GENRE)) {

            statement.setLong(1, genreId);
            statement.setLong(2, bookId);

            return statement.executeUpdate() > 0;

        } catch (SQLException e) {
            logger.error(e);
            throw new DaoException(e);
        }

    }

}
