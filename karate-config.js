function fn() {
    var config = {
        baseUrl: 'https://petstore.swagger.io/v2',
        headers: {
            'Content-Type': 'application/json'
        }
    };
    karate.log('Base URL:', config.baseUrl);
    return config;
}
