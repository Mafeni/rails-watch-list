const searchMovies = (query) => {
  fetch(`https://api.themoviedb.org/3/search/movie?api_key=2048d887fa53babd4687e73aa2f418f4&language=en-US&page=1&query=${query}`)
    .then(response => response.json())
    .then((data) => {
      data.Search.forEach((result) => {
        const movie = `<li class="list-inline-item">
          <img src="https://image.tmdb.org/t/p/w200#{${result.poster_path}" alt="">
          <p>${result.original_title}</p>
          <p>${result.overview}</p>
          <p>${result.rating}</p>
        </li>`;
        results.insertAdjacentHTML("beforeend", movie);
      });
    });
};

const searchForm = document.querySelector("#search-movies")

searchForm.addEventListener("submit", (event) => {
  const keywordInput = document.querySelector("#keyword")
  console.log(keywordInput)
});
