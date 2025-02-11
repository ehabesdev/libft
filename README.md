# libft - C Fonksiyonları Kütüphanesi

Bu proje, C dilinde sıkça kullanılan fonksiyonların yeniden yazılmış ve optimize edilmiş versiyonlarını içeren bir kütüphanedir. Amaç, standart C kütüphanesine (libc) benzer işlevler sunarken, aynı zamanda bazı ek ve özelleştirilmiş fonksiyonlar da sağlamaktır. Bu kütüphane, C programlama projelerinizde size temel yapı taşları sağlayarak geliştirme sürecini hızlandırmanıza ve kodunuzu daha okunaklı hale getirmenize yardımcı olacaktır.

## İçindekiler

*   **Karakter Kontrol Fonksiyonları:**
    *   `ft_isalpha`: Karakterin alfabetik olup olmadığını kontrol eder.
    *   `ft_isdigit`: Karakterin rakam olup olmadığını kontrol eder.
    *   `ft_isalnum`: Karakterin alfanümerik olup olmadığını kontrol eder.
    *   `ft_isascii`: Karakterin ASCII karakter aralığında olup olmadığını kontrol eder.
    *   `ft_isprint`: Karakterin yazdırılabilir bir karakter olup olmadığını kontrol eder.
*   **Dönüşüm Fonksiyonları:**
    *   `ft_toupper`: Küçük harfleri büyük harfe dönüştürür.
    *   `ft_tolower`: Büyük harfleri küçük harfe dönüştürür.
    *   `ft_atoi`: String'i integer'a dönüştürür.
*   **Bellek Fonksiyonları:**
    *   `ft_memset`: Bellek bloğunu belirli bir değerle doldurur.
    *   `ft_bzero`: Bellek bloğunu sıfırlar.
    *   `ft_memcpy`: Bellek bloğunu kopyalar.
    *   `ft_memmove`: Bellek bloğunu güvenli bir şekilde taşır.
    *   `ft_memchr`: Bellek bloğunda belirli bir karakteri arar.
    *   `ft_memcmp`: İki bellek bloğunu karşılaştırır.
    *   `ft_calloc`: Dinamik bellek ayırır ve sıfırlar.
*   **String Fonksiyonları:**
    *   `ft_strlen`: String'in uzunluğunu hesaplar.
    *   `ft_strlcpy`: String'i kopyalar (boyut sınırlamasıyla).
    *   `ft_strlcat`: String'leri birleştirir (boyut sınırlamasıyla).
    *   `ft_strchr`: String'de belirli bir karakteri arar.
    *   `ft_strrchr`: String'de belirli bir karakterin son oluşumunu arar.
    *   `ft_strncmp`: İki string'i karşılaştırır (boyut sınırlamasıyla).
    *   `ft_strnstr`: Bir string içinde başka bir string'i arar (boyut sınırlamasıyla).
    *   `ft_strdup`: String'in bir kopyasını oluşturur.
    *   `ft_substr`: String'in bir alt dizesini oluşturur.
    *   `ft_strjoin`: İki string'i birleştirir.
    *   `ft_strtrim`: String'in başlangıcından ve sonundan belirtilen karakterleri kaldırır.
    *   `ft_split`: String'i belirtilen ayırıcıya göre alt dizelere böler.
    *   `ft_itoa`: Integer'ı string'e dönüştürür.
    *   `ft_strmapi`: String'in her karakterine belirtilen fonksiyonu uygular.
    *   `ft_striteri`: String'in her karakterine belirtilen fonksiyonu uygular (indeks bilgisiyle).
*   **Giriş/Çıkış Fonksiyonları:**
    *   `ft_putchar_fd`: Belirtilen dosya tanımlayıcısına bir karakter yazar.
    *   `ft_putstr_fd`: Belirtilen dosya tanımlayıcısına bir string yazar.
    *   `ft_putendl_fd`: Belirtilen dosya tanımlayıcısına bir string yazar ve yeni satır ekler.
    *   `ft_putnbr_fd`: Belirtilen dosya tanımlayıcısına bir integer yazar.

## Kurulum

1.  Projeyi klonlayın:

    ```bash
    git clone [https://github.com/kullanici_adiniz/libft.git](https://www.google.com/search?q=https://www.google.com/search%3Fq%3Dhttps://github.com/kullanici_adiniz/libft.git)
    ```

2.  Projeye gidin:

    ```bash
    cd libft
    ```

3.  Kitaplığı derleyin:

    ```bash
    make
    ```

4.  Oluşan `libft.a` dosyasını projenize bağlayın.

## Kullanım

Fonksiyonları kullanmak için projenize ilgili başlık dosyasını ekleyin:

```c
#include "libft.h"
#include <stdio.h>

int main() {
    char *str = "Merhaba,Dünya,nasılsın?";
    char **result = ft_split(str, ',');
    int i = 0;
    while (result[i]) {
        printf("Kelime %d: %s\n", i, result[i]);
        free(result[i]); // Bellek sızıntısını önlemek için free kullanın
        i++;
    }
    free(result); // Bellek sızıntısını önlemek için free kullanın
    return 0;
}
```
