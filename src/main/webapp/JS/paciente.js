
document.addEventListener('DOMContentLoaded', () => {
    const countrySelect = document.getElementById('pais');

    fetch('https://restcountries.com/v3.1/all')
            .then(response => response.json())
            .then(data => {
                const countries = data.map(pais => ({
                        spanishName: pais.translations?.spa?.common || pais.name.common,
                        commonName: pais.name.common
                    }));

                countries.sort((a, b) => a.spanishName.localeCompare(b.spanishName));

                countries.forEach(pais => {
                    const option = document.createElement('option');
                    option.value = pais.commonName;
                    option.textContent = pais.spanishName;
                    countrySelect.appendChild(option);
                });
            })
            .catch(error => console.error('Error al cargar los países:', error));
});