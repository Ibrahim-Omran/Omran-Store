class FontFamilyHelper{
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily(){
    //ToDo: SherdPref
    final currentLanguage = 'ar';
    if(currentLanguage == 'ar'){
      return cairoArabic;
    }else{
      return poppinsEnglish ;
    }
  }
}
