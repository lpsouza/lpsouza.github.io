function displaySearchResults(results, store) {
    var searchResults = document.getElementById('search-results');

    if (results.length) { // Are there any results?
        var appendString = '';

        for (var i = 0; i < results.length; i++) {  // Iterate over the results
            var item = store.filter(function (post) {
                return post.id == results[i].ref;
            })[0];
            appendString += '<div class="post">';
            appendString += '<h2 class="title"><a href="' + item.url + '">' + item.title + '</a></h2>';
            appendString += '<div class="meta">';
            appendString += '<span class="date"><i class="far fa-calendar-alt"></i> ' + item.date + '</span>';
            appendString += '<span class="category"><i class="fas fa-tag"></i> ' + item.category + '</span>';
            appendString += '<span class="comments"><i class="fas fa-comments"></i> <a href="' + item.url + '#disqus_thread">Deixe seu comentário</a></span>';
            appendString += '</div>';
            appendString += '<div class="content">';
            appendString += item.excerpt;
            appendString += '</div>';
            appendString += '<div class="more">';
            appendString += '<a href="' + item.url + '" class="btn btn-sm btn-primary">Leia mais...</a>';
            appendString += '</div>';
            appendString += '</div>';
        }

        searchResults.innerHTML = appendString;
    } else {
        searchResults.innerHTML = '<li>No results found</li>';
    }
}

function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split('&');

    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');

        if (pair[0] === variable) {
            return decodeURIComponent(pair[1].replace(/\+/g, '%20'));
        }
    }
}

var searchTerm = getQueryVariable('s');

if (searchTerm) {
    document.getElementById('search-box').setAttribute("value", searchTerm);

    // Initalize lunr with the fields it will be searching on. I've given title
    // a boost of 10 to indicate matches on this field are more important.
    var idx = lunr(function () {
        this.ref('id');
        this.field('title', { boost: 10 });
        this.field('author');
        this.field('category');
        this.field('content');

        window.store.forEach(function (field) { // Add the data to lunr
            this.add(field);
        }, this);
    });

    var results = idx.search(searchTerm); // Get lunr to perform a search
    displaySearchResults(results, window.store); // We'll write this in the next section

}