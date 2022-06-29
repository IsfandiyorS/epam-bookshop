<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Complete Responsive Online Boot Store Website Design Tutorial</title>

	<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

	<!-- font awesome cdn link  -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>

	<!-- custom css file link  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/css/main.css"/>
</head>
<body>
<!-- header section starts  -->

<header class="header">
	<div class="header-1">
		<a href="#" class="logo"> <i class="fas fa-book"></i> bookly </a>

		<form action="" class="search-form">
			<input type="search"
				   name=""
				   placeholder="search here..."
				   id="search-box"/>
			<label for="search-box" class="fas fa-search"></label>
		</form>

		<div class="icons">
			<div id="search-btn" class="fas fa-search"></div>
			<a href="#" class="fas fa-heart"></a>
			<a href="#" class="fas fa-shopping-cart"></a>
			<%--            <div id="login-btn" class="fas fa-user"></div>--%>
			<a href="${pageContext.request.contextPath}/pages/login.jsp"><span class="fas fa-user"></span></a>
		</div>

		<ul>
			<li><a href="pages/admin/file_upload.jsp">File</a></li>
		</ul>

	</div>

	<div class="header-2">
		<nav class="navbar">
			<a href="#home">home</a>
			<a href="#featured">featured</a>
			<a href="#arrivals">arrivals</a>
			<a href="#reviews">reviews</a>
			<a href="#blogs">blogs</a>
		</nav>
	</div>
</header>

<!-- header section ends -->

<!-- bottom navbar  -->

<nav class="bottom-navbar">
	<a href="#home" class="fas fa-home"></a>
	<a href="#featured" class="fas fa-list"></a>
	<a href="#arrivals" class="fas fa-tags"></a>
	<a href="#reviews" class="fas fa-comments"></a>
	<a href="#blogs" class="fas fa-blog"></a>
</nav>

<!-- login form  -->

<div class="login-form-container">
	<div id="close-login-btn" class="fas fa-times"></div>

	<form action="">
		<h3>sign in</h3>
		<span>username</span>
		<input type="email"
			   name=""
			   class="box"
			   placeholder="enter your email"/>
		<span>password</span>
		<input
				type="password"
				name=""
				class="box"
				placeholder="enter your password"/>
		<div class="checkbox">
			<input type="checkbox" name="" id="remember-me"/>
			<label for="remember-me"> remember me</label>
		</div>
		<input type="submit" value="sign in" class="btn"/>
		<p>forget password ? <a href="#">click here</a></p>
		<p>don't have an account ? <a href="#">create one</a></p>
	</form>
</div>

<!-- home section starts  -->

<section class="home" id="home">
	<div class="row">
		<div class="content">
			<h3>upto 75% off</h3>
			<p>
				Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam
				deserunt nostrum accusamus. Nam alias sit necessitatibus, aliquid ex
				minima at!
			</p>
			<a href="#" class="btn">shop now</a>
		</div>

		<div class="swiper books-slider">
			<div class="swiper-wrapper">
				<a href="#" class="swiper-slide"
				><img src="${pageContext.request.contextPath}/pages/img/book_img/book-1.png" alt=""
				/></a>
				<a href="#" class="swiper-slide"
				><img src="${pageContext.request.contextPath}/pages/img/book_img/book-2.png" alt=""
				/></a>
				<a href="#" class="swiper-slide"
				><img src="${pageContext.request.contextPath}/pages/img/book_img/book-3.png" alt=""
				/></a>
				<a href="#" class="swiper-slide"
				><img src="${pageContext.request.contextPath}/pages/img/book_img/book-4.png" alt=""
				/></a>
				<a href="#" class="swiper-slide"
				><img src="${pageContext.request.contextPath}/pages/img/book_img/book-5.png" alt=""
				/></a>
				<a href="#" class="swiper-slide"
				><img src="${pageContext.request.contextPath}/pages/img/book_img/book-6.png" alt=""
				/></a>
			</div>
			<img src="${pageContext.request.contextPath}/pages/img/book_img/stand.png" class="stand" alt=""/>
		</div>
	</div>
</section>

<!-- home section ense  -->

<!-- icons section starts  -->

<section class="icons-container">
	<div class="icons">
		<i class="fas fa-shipping-fast"></i>
		<div class="content">
			<h3>free shipping</h3>
			<p>order over $100</p>
		</div>
	</div>

	<div class="icons">
		<i class="fas fa-lock"></i>
		<div class="content">
			<h3>secure payment</h3>
			<p>100 secure payment</p>
		</div>
	</div>

	<div class="icons">
		<i class="fas fa-redo-alt"></i>
		<div class="content">
			<h3>easy returns</h3>
			<p>10 days returns</p>
		</div>
	</div>

	<div class="icons">
		<i class="fas fa-headset"></i>
		<div class="content">
			<h3>24/7 support</h3>
			<p>call us anytime</p>
		</div>
	</div>
</section>

<!-- icons section ends -->

<!-- featured section starts  -->

<section class="featured" id="featured">
	<h1 class="heading"><span>featured books</span></h1>

	<div class="swiper featured-slider">
		<div class="swiper-wrapper">
			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-1.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-2.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-3.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-4.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-5.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-6.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-7.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-8.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-9.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="icons">
					<a href="#" class="fas fa-search"></a>
					<a href="#" class="fas fa-heart"></a>
					<a href="#" class="fas fa-eye"></a>
				</div>
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-10.png" alt=""/>
				</div>
				<div class="content">
					<h3>featured books</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<a href="#" class="btn">add to cart</a>
				</div>
			</div>
		</div>

		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	</div>
</section>

<!-- featured section ends -->

<!-- newsletter section starts -->

<section class="newsletter">
	<form action="">
		<h3>subscribe for latest updates</h3>
		<input
				type="email"
				name=""
				placeholder="enter your email"
				id=""
				class="box"
		/>
		<input type="submit" value="subscribe" class="btn"/>
	</form>
</section>

<!-- newsletter section ends -->

<!-- arrivals section starts  -->

<section class="arrivals" id="arrivals">
	<h1 class="heading"><span>new arrivals</span></h1>

	<div class="swiper arrivals-slider">
		<div class="swiper-wrapper">
			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-1.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-2.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-3.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-4.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-5.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>
		</div>
	</div>

	<div class="swiper arrivals-slider">
		<div class="swiper-wrapper">
			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-6.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-7.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-8.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-9.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>

			<a href="#" class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/book-10.png" alt=""/>
				</div>
				<div class="content">
					<h3>new arrivals</h3>
					<div class="price">$15.99 <span>$20.99</span></div>
					<div class="stars">
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star"></i>
						<i class="fas fa-star-half-alt"></i>
					</div>
				</div>
			</a>
		</div>
	</div>
</section>

<!-- arrivals section ends -->

<!-- deal section starts  -->

<section class="deal">
	<div class="content">
		<h3>deal of the day</h3>
		<h1>upto 50% off</h1>
		<p>
			Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde
			perspiciatis in atque dolore tempora quaerat at fuga dolorum natus
			velit.
		</p>
		<a href="#" class="btn">shop now</a>
	</div>

	<div class="image">
		<img src="${pageContext.request.contextPath}/pages/img/book_img/deal-img.jpg" alt=""/>
	</div>
</section>

<!-- deal section ends -->

<!-- reviews section starts  -->

<section class="reviews" id="reviews">
	<h1 class="heading"><span>client's reviews</span></h1>

	<div class="swiper reviews-slider">
		<div class="swiper-wrapper">
			<div class="swiper-slide box">
				<img src="${pageContext.request.contextPath}/pages/img/book_img/pic-1.png" alt=""/>
				<h3>john deo</h3>
				<p>
					Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
					facere hic.
				</p>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star-half-alt"></i>
				</div>
			</div>

			<div class="swiper-slide box">
				<img src="${pageContext.request.contextPath}/pages/img/book_img/pic-2.png" alt=""/>
				<h3>john deo</h3>
				<p>
					Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
					facere hic.
				</p>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star-half-alt"></i>
				</div>
			</div>

			<div class="swiper-slide box">
				<img src="${pageContext.request.contextPath}/pages/img/book_img/pic-3.png" alt=""/>
				<h3>john deo</h3>
				<p>
					Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
					facere hic.
				</p>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star-half-alt"></i>
				</div>
			</div>
			<div class="swiper-slide box">
				<img src="${pageContext.request.contextPath}/pages/img/book_img/pic-4.png" alt=""/>
				<h3>john deo</h3>
				<p>
					Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
					facere hic.
				</p>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star-half-alt"></i>
				</div>
			</div>

			<div class="swiper-slide box">
				<img src="${pageContext.request.contextPath}/pages/img/book_img/pic-5.png" alt=""/>
				<h3>john deo</h3>
				<p>
					Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
					facere hic.
				</p>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star-half-alt"></i>
				</div>
			</div>

			<div class="swiper-slide box">
				<img src="${pageContext.request.contextPath}/pages/img/book_img/pic-6.png" alt=""/>
				<h3>john deo</h3>
				<p>
					Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Aspernatur nihil ipsa placeat. Aperiam at sint, eos ex similique
					facere hic.
				</p>
				<div class="stars">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star-half-alt"></i>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- reviews section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">
	<h1 class="heading"><span>our blogs</span></h1>

	<div class="swiper blogs-slider">
		<div class="swiper-wrapper">
			<div class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/blog-1.jpg" alt=""/>
				</div>
				<div class="content">
					<h3>blog title goes here</h3>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio,
						odio.
					</p>
					<a href="#" class="btn">read more</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/blog-2.jpg" alt=""/>
				</div>
				<div class="content">
					<h3>blog title goes here</h3>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio,
						odio.
					</p>
					<a href="#" class="btn">read more</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/blog-3.jpg" alt=""/>
				</div>
				<div class="content">
					<h3>blog title goes here</h3>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio,
						odio.
					</p>
					<a href="#" class="btn">read more</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/blog-4.jpg" alt=""/>
				</div>
				<div class="content">
					<h3>blog title goes here</h3>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio,
						odio.
					</p>
					<a href="#" class="btn">read more</a>
				</div>
			</div>

			<div class="swiper-slide box">
				<div class="image">
					<img src="${pageContext.request.contextPath}/pages/img/book_img/blog-5.jpg" alt=""/>
				</div>
				<div class="content">
					<h3>blog title goes here</h3>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio,
						odio.
					</p>
					<a href="#" class="btn">read more</a>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- blogs section ends -->

<!-- footer section starts  -->

<section class="footer">
	<div class="box-container">
		<div class="box">
			<h3>our locations</h3>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> france </a>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
			<a href="#"> <i class="fas fa-map-marker-alt"></i> africa </a>
		</div>

		<div class="box">
			<h3>quick links</h3>
			<a href="#"> <i class="fas fa-arrow-right"></i> home </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> featured </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> arrivals </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> reviews </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> blogs </a>
		</div>

		<div class="box">
			<h3>extra links</h3>
			<a href="#"> <i class="fas fa-arrow-right"></i> account info </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> ordered items </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> privacy policy </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> payment method </a>
			<a href="#"> <i class="fas fa-arrow-right"></i> our serivces </a>
		</div>

		<div class="box">
			<h3>contact info</h3>
			<a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
			<a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
			<a href="#"> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </a>
			<img src="${pageContext.request.contextPath}/pages/img/book_img/worldmap.png" class="map" alt=""/>
		</div>
	</div>

	<div class="share">
		<a href="#" class="fab fa-facebook-f"></a>
		<a href="#" class="fab fa-twitter"></a>
		<a href="#" class="fab fa-instagram"></a>
		<a href="#" class="fab fa-linkedin"></a>
		<a href="#" class="fab fa-pinterest"></a>
	</div>

	<div class="credit">
		created by <span>mr. web designer</span> | all rights reserved!
	</div>
</section>

<!-- footer section ends -->

<!-- loader  -->

<!-- <div class="loader-container">
  <img src="image/book_img/loader-img.gif" alt="" />
</div> -->

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="${pageContext.request.contextPath}/pages/js/main.js"></script>
</body>
</html>
