// qlocale.sip generated by MetaSIP on Sun Jun 16 16:06:24 2013
//
// This file is part of the QtCore Python extension module.
//
// Copyright (c) 2013 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt.
// 
// This file may be used under the terms of the GNU General Public
// License versions 2.0 or 3.0 as published by the Free Software
// Foundation and appearing in the files LICENSE.GPL2 and LICENSE.GPL3
// included in the packaging of this file.  Alternatively you may (at
// your option) use any later version of the GNU General Public
// License if such license has been publicly approved by Riverbank
// Computing Limited (or its successors, if any) and the KDE Free Qt
// Foundation. In addition, as a special exception, Riverbank gives you
// certain additional rights. These rights are described in the Riverbank
// GPL Exception version 1.1, which can be found in the file
// GPL_EXCEPTION.txt in this package.
// 
// If you are unsure which license is appropriate for your use, please
// contact the sales department at sales@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%ModuleCode
#include <qlocale.h>
%End

class QLocale
{
%TypeHeaderCode
#include <qlocale.h>
%End

public:
    enum Language
    {
        C,
        Abkhazian,
        Afan,
        Afar,
        Afrikaans,
        Albanian,
        Amharic,
        Arabic,
        Armenian,
        Assamese,
        Aymara,
        Azerbaijani,
        Bashkir,
        Basque,
        Bengali,
        Bhutani,
        Bihari,
        Bislama,
        Breton,
        Bulgarian,
        Burmese,
        Byelorussian,
        Cambodian,
        Catalan,
        Chinese,
        Corsican,
        Croatian,
        Czech,
        Danish,
        Dutch,
        English,
        Esperanto,
        Estonian,
        Faroese,
%If (- Qt_5_0_0)
        FijiLanguage,
%End
        Finnish,
        French,
        Frisian,
        Gaelic,
        Galician,
        Georgian,
        German,
        Greek,
        Greenlandic,
        Guarani,
        Gujarati,
        Hausa,
        Hebrew,
        Hindi,
        Hungarian,
        Icelandic,
        Indonesian,
        Interlingua,
        Interlingue,
        Inuktitut,
        Inupiak,
        Irish,
        Italian,
        Japanese,
        Javanese,
        Kannada,
        Kashmiri,
        Kazakh,
        Kinyarwanda,
        Kirghiz,
        Korean,
        Kurdish,
        Kurundi,
%If (- Qt_5_0_0)
        Laothian,
%End
        Latin,
        Latvian,
        Lingala,
        Lithuanian,
        Macedonian,
        Malagasy,
        Malay,
        Malayalam,
        Maltese,
        Maori,
        Marathi,
        Moldavian,
        Mongolian,
        NauruLanguage,
        Nepali,
        Norwegian,
        Occitan,
        Oriya,
        Pashto,
        Persian,
        Polish,
        Portuguese,
        Punjabi,
        Quechua,
        RhaetoRomance,
        Romanian,
        Russian,
        Samoan,
%If (- Qt_5_0_0)
        Sangho,
%End
        Sanskrit,
        Serbian,
        SerboCroatian,
%If (- Qt_5_0_0)
        Sesotho,
%End
%If (- Qt_5_0_0)
        Setswana,
%End
        Shona,
        Sindhi,
%If (- Qt_5_0_0)
        Singhalese,
%End
%If (- Qt_5_0_0)
        Siswati,
%End
        Slovak,
        Slovenian,
        Somali,
        Spanish,
        Sundanese,
        Swahili,
        Swedish,
        Tagalog,
        Tajik,
        Tamil,
        Tatar,
        Telugu,
        Thai,
        Tibetan,
        Tigrinya,
%If (- Qt_5_0_0)
        TongaLanguage,
%End
        Tsonga,
        Turkish,
        Turkmen,
        Twi,
        Uigur,
        Ukrainian,
        Urdu,
        Uzbek,
        Vietnamese,
        Volapuk,
        Welsh,
        Wolof,
        Xhosa,
        Yiddish,
        Yoruba,
        Zhuang,
        Zulu,
%If (- Qt_5_0_0)
        Nynorsk,
%End
        Bosnian,
        Divehi,
        Manx,
        Cornish,
        LastLanguage,
%If (Qt_4_3_0 -)
        NorwegianBokmal,
%End
%If (Qt_4_3_0 -)
        NorwegianNynorsk,
%End
%If (Qt_4_3_0 -)
        Akan,
%End
%If (Qt_4_3_0 -)
        Konkani,
%End
%If (Qt_4_3_0 -)
        Ga,
%End
%If (Qt_4_3_0 -)
        Igbo,
%End
%If (Qt_4_3_0 -)
        Kamba,
%End
%If (Qt_4_3_0 -)
        Syriac,
%End
%If (Qt_4_3_0 -)
        Blin,
%End
%If (Qt_4_3_0 -)
        Geez,
%End
%If (Qt_4_3_0 -)
        Koro,
%End
%If (Qt_4_3_0 -)
        Sidamo,
%End
%If (Qt_4_3_0 -)
        Atsam,
%End
%If (Qt_4_3_0 -)
        Tigre,
%End
%If (Qt_4_3_0 -)
        Jju,
%End
%If (Qt_4_3_0 -)
        Friulian,
%End
%If (Qt_4_3_0 -)
        Venda,
%End
%If (Qt_4_3_0 -)
        Ewe,
%End
%If (Qt_4_3_0 -)
        Walamo,
%End
%If (Qt_4_3_0 -)
        Hawaiian,
%End
%If (Qt_4_3_0 -)
        Tyap,
%End
%If (Qt_4_3_0 -)
        Chewa,
%End
%If (Qt_4_7_0 -)
        Filipino,
%End
%If (Qt_4_7_0 -)
        SwissGerman,
%End
%If (Qt_4_7_0 -)
        SichuanYi,
%End
%If (Qt_4_7_0 -)
        Kpelle,
%End
%If (Qt_4_7_0 -)
        LowGerman,
%End
%If (Qt_4_7_0 -)
        SouthNdebele,
%End
%If (Qt_4_7_0 -)
        NorthernSotho,
%End
%If (Qt_4_7_0 -)
        NorthernSami,
%End
%If (Qt_4_7_0 -)
        Taroko,
%End
%If (Qt_4_7_0 -)
        Gusii,
%End
%If (Qt_4_7_0 -)
        Taita,
%End
%If (Qt_4_7_0 -)
        Fulah,
%End
%If (Qt_4_7_0 -)
        Kikuyu,
%End
%If (Qt_4_7_0 -)
        Samburu,
%End
%If (Qt_4_7_0 -)
        Sena,
%End
%If (Qt_4_7_0 -)
        NorthNdebele,
%End
%If (Qt_4_7_0 -)
        Rombo,
%End
%If (Qt_4_7_0 -)
        Tachelhit,
%End
%If (Qt_4_7_0 -)
        Kabyle,
%End
%If (Qt_4_7_0 -)
        Nyankole,
%End
%If (Qt_4_7_0 -)
        Bena,
%End
%If (Qt_4_7_0 -)
        Vunjo,
%End
%If (Qt_4_7_0 -)
        Bambara,
%End
%If (Qt_4_7_0 -)
        Embu,
%End
%If (Qt_4_7_0 -)
        Cherokee,
%End
%If (Qt_4_7_0 -)
        Morisyen,
%End
%If (Qt_4_7_0 -)
        Makonde,
%End
%If (Qt_4_7_0 -)
        Langi,
%End
%If (Qt_4_7_0 -)
        Ganda,
%End
%If (Qt_4_7_0 -)
        Bemba,
%End
%If (Qt_4_7_0 -)
        Kabuverdianu,
%End
%If (Qt_4_7_0 -)
        Meru,
%End
%If (Qt_4_7_0 -)
        Kalenjin,
%End
%If (Qt_4_7_0 -)
        Nama,
%End
%If (Qt_4_7_0 -)
        Machame,
%End
%If (Qt_4_7_0 -)
        Colognian,
%End
%If (Qt_4_7_0 -)
        Masai,
%End
%If (Qt_4_7_0 -)
        Soga,
%End
%If (Qt_4_7_0 -)
        Luyia,
%End
%If (Qt_4_7_0 -)
        Asu,
%End
%If (Qt_4_7_0 -)
        Teso,
%End
%If (Qt_4_7_0 -)
        Saho,
%End
%If (Qt_4_7_0 -)
        KoyraChiini,
%End
%If (Qt_4_7_0 -)
        Rwa,
%End
%If (Qt_4_7_0 -)
        Luo,
%End
%If (Qt_4_7_0 -)
        Chiga,
%End
%If (Qt_4_7_0 -)
        CentralMoroccoTamazight,
%End
%If (Qt_4_7_0 -)
        KoyraboroSenni,
%End
%If (Qt_4_7_0 -)
        Shambala,
%End
%If (Qt_4_8_0 -)
        AnyLanguage,
%End
%If (Qt_4_8_4 -)
        Rundi,
%End
%If (Qt_4_8_4 -)
        Bodo,
%End
%If (Qt_4_8_4 -)
        Aghem,
%End
%If (Qt_4_8_4 -)
        Basaa,
%End
%If (Qt_4_8_4 -)
        Zarma,
%End
%If (Qt_4_8_4 -)
        Duala,
%End
%If (Qt_4_8_4 -)
        JolaFonyi,
%End
%If (Qt_4_8_4 -)
        Ewondo,
%End
%If (Qt_4_8_4 -)
        Bafia,
%End
%If (Qt_4_8_4 -)
        LubaKatanga,
%End
%If (Qt_4_8_4 -)
        MakhuwaMeetto,
%End
%If (Qt_4_8_4 -)
        Mundang,
%End
%If (Qt_4_8_4 -)
        Kwasio,
%End
%If (Qt_4_8_4 -)
        Nuer,
%End
%If (Qt_4_8_4 -)
        Sakha,
%End
%If (Qt_4_8_4 -)
        Sangu,
%End
%If (Qt_4_8_4 -)
        CongoSwahili,
%End
%If (Qt_4_8_4 -)
        Tasawaq,
%End
%If (Qt_4_8_4 -)
        Vai,
%End
%If (Qt_4_8_4 -)
        Walser,
%End
%If (Qt_4_8_4 -)
        Yangben,
%End
%If (Qt_5_0_0 -)
        Oromo,
%End
%If (Qt_5_0_0 -)
        Dzongkha,
%End
%If (Qt_5_0_0 -)
        Belarusian,
%End
%If (Qt_5_0_0 -)
        Khmer,
%End
%If (Qt_5_0_0 -)
        Fijian,
%End
%If (Qt_5_0_0 -)
        WesternFrisian,
%End
%If (Qt_5_0_0 -)
        Lao,
%End
%If (Qt_5_0_0 -)
        Marshallese,
%End
%If (Qt_5_0_0 -)
        Romansh,
%End
%If (Qt_5_0_0 -)
        Sango,
%End
%If (Qt_5_0_0 -)
        Ossetic,
%End
%If (Qt_5_0_0 -)
        SouthernSotho,
%End
%If (Qt_5_0_0 -)
        Tswana,
%End
%If (Qt_5_0_0 -)
        Sinhala,
%End
%If (Qt_5_0_0 -)
        Swati,
%End
%If (Qt_5_0_0 -)
        Sardinian,
%End
%If (Qt_5_0_0 -)
        Tongan,
%End
%If (Qt_5_0_0 -)
        Tahitian,
%End
%If (Qt_5_0_0 -)
        Nyanja,
%End
%If (Qt_5_0_0 -)
        Avaric,
%End
%If (Qt_5_0_0 -)
        Chamorro,
%End
%If (Qt_5_0_0 -)
        Chechen,
%End
%If (Qt_5_0_0 -)
        Church,
%End
%If (Qt_5_0_0 -)
        Chuvash,
%End
%If (Qt_5_0_0 -)
        Cree,
%End
%If (Qt_5_0_0 -)
        Haitian,
%End
%If (Qt_5_0_0 -)
        Herero,
%End
%If (Qt_5_0_0 -)
        HiriMotu,
%End
%If (Qt_5_0_0 -)
        Kanuri,
%End
%If (Qt_5_0_0 -)
        Komi,
%End
%If (Qt_5_0_0 -)
        Kongo,
%End
%If (Qt_5_0_0 -)
        Kwanyama,
%End
%If (Qt_5_0_0 -)
        Limburgish,
%End
%If (Qt_5_0_0 -)
        Luxembourgish,
%End
%If (Qt_5_0_0 -)
        Navaho,
%End
%If (Qt_5_0_0 -)
        Ndonga,
%End
%If (Qt_5_0_0 -)
        Ojibwa,
%End
%If (Qt_5_0_0 -)
        Pali,
%End
%If (Qt_5_0_0 -)
        Walloon,
%End
%If (Qt_5_0_0 -)
        Avestan,
%End
%If (Qt_5_0_0 -)
        Asturian,
%End
%If (Qt_5_0_0 -)
        Ngomba,
%End
%If (Qt_5_0_0 -)
        Kako,
%End
%If (Qt_5_0_0 -)
        Meta,
%End
%If (Qt_5_0_0 -)
        Ngiemboon,
%End
    };

    enum Country
    {
        AnyCountry,
        Afghanistan,
        Albania,
        Algeria,
        AmericanSamoa,
        Andorra,
        Angola,
        Anguilla,
        Antarctica,
        AntiguaAndBarbuda,
        Argentina,
        Armenia,
        Aruba,
        Australia,
        Austria,
        Azerbaijan,
        Bahamas,
        Bahrain,
        Bangladesh,
        Barbados,
        Belarus,
        Belgium,
        Belize,
        Benin,
        Bermuda,
        Bhutan,
        Bolivia,
        BosniaAndHerzegowina,
        Botswana,
        BouvetIsland,
        Brazil,
        BritishIndianOceanTerritory,
%If (- Qt_5_0_0)
        BruneiDarussalam,
%End
        Bulgaria,
        BurkinaFaso,
        Burundi,
        Cambodia,
        Cameroon,
        Canada,
        CapeVerde,
        CaymanIslands,
        CentralAfricanRepublic,
        Chad,
        Chile,
        China,
        ChristmasIsland,
        CocosIslands,
        Colombia,
        Comoros,
        DemocraticRepublicOfCongo,
        PeoplesRepublicOfCongo,
        CookIslands,
        CostaRica,
        IvoryCoast,
        Croatia,
        Cuba,
        Cyprus,
        CzechRepublic,
        Denmark,
        Djibouti,
        Dominica,
        DominicanRepublic,
        EastTimor,
        Ecuador,
        Egypt,
        ElSalvador,
        EquatorialGuinea,
        Eritrea,
        Estonia,
        Ethiopia,
        FalklandIslands,
        FaroeIslands,
%If (- Qt_5_0_0)
        FijiCountry,
%End
        Finland,
        France,
%If (- Qt_5_0_0)
        MetropolitanFrance,
%End
        FrenchGuiana,
        FrenchPolynesia,
        FrenchSouthernTerritories,
        Gabon,
        Gambia,
        Georgia,
        Germany,
        Ghana,
        Gibraltar,
        Greece,
        Greenland,
        Grenada,
        Guadeloupe,
        Guam,
        Guatemala,
        Guinea,
        GuineaBissau,
        Guyana,
        Haiti,
        HeardAndMcDonaldIslands,
        Honduras,
        HongKong,
        Hungary,
        Iceland,
        India,
        Indonesia,
        Iran,
        Iraq,
        Ireland,
        Israel,
        Italy,
        Jamaica,
        Japan,
        Jordan,
        Kazakhstan,
        Kenya,
        Kiribati,
        DemocraticRepublicOfKorea,
        RepublicOfKorea,
        Kuwait,
        Kyrgyzstan,
%If (- Qt_5_0_0)
        Lao,
%End
        Latvia,
        Lebanon,
        Lesotho,
        Liberia,
%If (- Qt_5_0_0)
        LibyanArabJamahiriya,
%End
        Liechtenstein,
        Lithuania,
        Luxembourg,
        Macau,
        Macedonia,
        Madagascar,
        Malawi,
        Malaysia,
        Maldives,
        Mali,
        Malta,
        MarshallIslands,
        Martinique,
        Mauritania,
        Mauritius,
        Mayotte,
        Mexico,
        Micronesia,
        Moldova,
        Monaco,
        Mongolia,
        Montserrat,
        Morocco,
        Mozambique,
        Myanmar,
        Namibia,
        NauruCountry,
        Nepal,
        Netherlands,
%If (- Qt_5_0_0)
        NetherlandsAntilles,
%End
        NewCaledonia,
        NewZealand,
        Nicaragua,
        Niger,
        Nigeria,
        Niue,
        NorfolkIsland,
        NorthernMarianaIslands,
        Norway,
        Oman,
        Pakistan,
        Palau,
%If (- Qt_5_0_0)
        PalestinianTerritory,
%End
        Panama,
        PapuaNewGuinea,
        Paraguay,
        Peru,
        Philippines,
        Pitcairn,
        Poland,
        Portugal,
        PuertoRico,
        Qatar,
        Reunion,
        Romania,
        RussianFederation,
        Rwanda,
        SaintKittsAndNevis,
%If (- Qt_5_0_0)
        StLucia,
%End
%If (- Qt_5_0_0)
        StVincentAndTheGrenadines,
%End
        Samoa,
        SanMarino,
        SaoTomeAndPrincipe,
        SaudiArabia,
        Senegal,
        Seychelles,
        SierraLeone,
        Singapore,
        Slovakia,
        Slovenia,
        SolomonIslands,
        Somalia,
        SouthAfrica,
        SouthGeorgiaAndTheSouthSandwichIslands,
        Spain,
        SriLanka,
%If (- Qt_5_0_0)
        StHelena,
%End
%If (- Qt_5_0_0)
        StPierreAndMiquelon,
%End
        Sudan,
        Suriname,
        SvalbardAndJanMayenIslands,
        Swaziland,
        Sweden,
        Switzerland,
        SyrianArabRepublic,
        Taiwan,
        Tajikistan,
        Tanzania,
        Thailand,
        Togo,
        Tokelau,
%If (- Qt_5_0_0)
        TongaCountry,
%End
        TrinidadAndTobago,
        Tunisia,
        Turkey,
        Turkmenistan,
        TurksAndCaicosIslands,
        Tuvalu,
        Uganda,
        Ukraine,
        UnitedArabEmirates,
        UnitedKingdom,
        UnitedStates,
        UnitedStatesMinorOutlyingIslands,
        Uruguay,
        Uzbekistan,
        Vanuatu,
        VaticanCityState,
        Venezuela,
%If (- Qt_5_0_0)
        VietNam,
%End
        BritishVirginIslands,
%If (- Qt_5_0_0)
        USVirginIslands,
%End
        WallisAndFutunaIslands,
        WesternSahara,
        Yemen,
%If (- Qt_5_0_0)
        Yugoslavia,
%End
        Zambia,
        Zimbabwe,
%If (- Qt_5_0_0)
        SerbiaAndMontenegro,
%End
%If (Qt_4_7_0 -)
        Montenegro,
%End
%If (Qt_4_7_0 -)
        Serbia,
%End
%If (Qt_4_7_0 -)
        SaintBarthelemy,
%End
%If (Qt_4_7_0 -)
        SaintMartin,
%End
%If (Qt_4_7_0 -)
        LatinAmericaAndTheCaribbean,
%End
        LastCountry,
%If (Qt_5_0_0 -)
        Brunei,
%End
%If (Qt_5_0_0 -)
        CongoKinshasa,
%End
%If (Qt_5_0_0 -)
        CongoBrazzaville,
%End
%If (Qt_5_0_0 -)
        Fiji,
%End
%If (Qt_5_0_0 -)
        Guernsey,
%End
%If (Qt_5_0_0 -)
        NorthKorea,
%End
%If (Qt_5_0_0 -)
        SouthKorea,
%End
%If (Qt_5_0_0 -)
        Laos,
%End
%If (Qt_5_0_0 -)
        Libya,
%End
%If (Qt_5_0_0 -)
        CuraSao,
%End
%If (Qt_5_0_0 -)
        PalestinianTerritories,
%End
%If (Qt_5_0_0 -)
        Russia,
%End
%If (Qt_5_0_0 -)
        SaintLucia,
%End
%If (Qt_5_0_0 -)
        SaintVincentAndTheGrenadines,
%End
%If (Qt_5_0_0 -)
        SaintHelena,
%End
%If (Qt_5_0_0 -)
        SaintPierreAndMiquelon,
%End
%If (Qt_5_0_0 -)
        Syria,
%End
%If (Qt_5_0_0 -)
        Tonga,
%End
%If (Qt_5_0_0 -)
        Vietnam,
%End
%If (Qt_5_0_0 -)
        UnitedStatesVirginIslands,
%End
%If (Qt_5_0_0 -)
        CanaryIslands,
%End
%If (Qt_5_0_0 -)
        ClippertonIsland,
%End
%If (Qt_5_0_0 -)
        AscensionIsland,
%End
%If (Qt_5_0_0 -)
        AlandIslands,
%End
%If (Qt_5_0_0 -)
        DiegoGarcia,
%End
%If (Qt_5_0_0 -)
        CeutaAndMelilla,
%End
%If (Qt_5_0_0 -)
        IsleOfMan,
%End
%If (Qt_5_0_0 -)
        Jersey,
%End
%If (Qt_5_0_0 -)
        TristanDaCunha,
%End
%If (Qt_5_0_0 -)
        SouthSudan,
%End
%If (Qt_5_0_0 -)
        Bonaire,
%End
%If (Qt_5_0_0 -)
        SintMaarten,
%End
    };

%If (Qt_4_2_0 -)

    enum NumberOption
    {
        OmitGroupSeparator,
        RejectGroupSeparator,
    };

%End
%If (Qt_4_2_0 -)
    typedef QFlags<QLocale::NumberOption> NumberOptions;
%End
    QLocale();
    QLocale(const QString &name);
    QLocale(QLocale::Language language, QLocale::Country country = QLocale::AnyCountry);
    QLocale(const QLocale &other);
%If (Qt_5_0_0 -)
    ~QLocale();
%End
    QLocale::Language language() const;
    QLocale::Country country() const;
    QString name() const;
%If (Qt_5_0_0 -)
    short toShort(const QString &s, bool *ok = 0) const;
%End
%If (- Qt_5_0_0)
    short toShort(const QString &s, bool *ok = 0, int base = 0) const;
%End
%If (Qt_5_0_0 -)
    ushort toUShort(const QString &s, bool *ok = 0) const;
%End
%If (- Qt_5_0_0)
    ushort toUShort(const QString &s, bool *ok = 0, int base = 0) const;
%End
%If (Qt_5_0_0 -)
    int toInt(const QString &s, bool *ok = 0) const;
%End
%If (- Qt_5_0_0)
    int toInt(const QString &s, bool *ok = 0, int base = 0) const;
%End
%If (Qt_5_0_0 -)
    uint toUInt(const QString &s, bool *ok = 0) const;
%End
%If (- Qt_5_0_0)
    uint toUInt(const QString &s, bool *ok = 0, int base = 0) const;
%End
%If (Qt_5_0_0 -)
    qlonglong toLongLong(const QString &s, bool *ok = 0) const;
%End
%If (- Qt_5_0_0)
    qlonglong toLongLong(const QString &s, bool *ok = 0, int base = 0) const;
%End
%If (Qt_5_0_0 -)
    qulonglong toULongLong(const QString &s, bool *ok = 0) const;
%End
%If (- Qt_5_0_0)
    qlonglong toULongLong(const QString &s, bool *ok = 0, int base = 0) const;
%End
    float toFloat(const QString &s, bool *ok = 0) const;
    double toDouble(const QString &s, bool *ok = 0) const;
    QString toString(int i /Constrained/) const;
    QString toString(double i /Constrained/, char format = 'g', int precision = 6) const;
    QString toString(qlonglong i) const;
    QString toString(qulonglong i) const;
    bool operator==(const QLocale &other) const;
    bool operator!=(const QLocale &other) const;
    static QString languageToString(QLocale::Language language);
    static QString countryToString(QLocale::Country country);
    static void setDefault(const QLocale &locale);
    static QLocale c();
    static QLocale system();

    enum FormatType
    {
        LongFormat,
        ShortFormat,
%If (Qt_4_5_0 -)
        NarrowFormat,
%End
    };

%If (Qt_4_4_0 -)
    QString toString(const QDateTime &dateTime, const QString &format) const;
%End
%If (Qt_4_4_0 -)
    QString toString(const QDateTime &dateTime, QLocale::FormatType format = QLocale::LongFormat) const;
%End
    QString toString(const QDate &date, const QString &formatStr) const;
    QString toString(const QDate &date, QLocale::FormatType format = QLocale::LongFormat) const;
    QString toString(const QTime &time, const QString &formatStr) const;
    QString toString(const QTime &time, QLocale::FormatType format = QLocale::LongFormat) const;
    QString dateFormat(QLocale::FormatType format = QLocale::LongFormat) const;
    QString timeFormat(QLocale::FormatType format = QLocale::LongFormat) const;
%If (Qt_4_4_0 -)
    QString dateTimeFormat(QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_4_0 -)
    QDate toDate(const QString &string, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_4_0 -)
    QDate toDate(const QString &string, const QString &format) const;
%End
%If (Qt_4_4_0 -)
    QTime toTime(const QString &string, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_4_0 -)
    QTime toTime(const QString &string, const QString &format) const;
%End
%If (Qt_4_4_0 -)
    QDateTime toDateTime(const QString &string, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_4_0 -)
    QDateTime toDateTime(const QString &string, const QString &format) const;
%End
    QChar decimalPoint() const;
    QChar groupSeparator() const;
    QChar percent() const;
    QChar zeroDigit() const;
    QChar negativeSign() const;
    QChar exponential() const;
%If (Qt_4_2_0 -)
    QString monthName(int, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_2_0 -)
    QString dayName(int, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_2_0 -)
    void setNumberOptions(QFlags<QLocale::NumberOption> options);
%End
%If (Qt_4_2_0 -)
    QFlags<QLocale::NumberOption> numberOptions() const;
%End
%If (Qt_4_3_0 -)
    static QList<QLocale::Country> countriesForLanguage(QLocale::Language lang);
%End
%If (Qt_4_4_0 -)

    enum MeasurementSystem
    {
        MetricSystem,
        ImperialSystem,
%If (Qt_5_0_0 -)
        ImperialUSSystem,
%End
%If (Qt_5_0_0 -)
        ImperialUKSystem,
%End
    };

%End
%If (Qt_4_4_0 -)
    QLocale::MeasurementSystem measurementSystem() const;
%End
%If (Qt_4_5_0 -)
    QChar positiveSign() const;
%End
%If (Qt_4_5_0 -)
    QString standaloneMonthName(int, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_5_0 -)
    QString standaloneDayName(int, QLocale::FormatType format = QLocale::LongFormat) const;
%End
%If (Qt_4_5_0 -)
    QString amText() const;
%End
%If (Qt_4_5_0 -)
    QString pmText() const;
%End
%If (Qt_4_7_0 -)
    Qt::LayoutDirection textDirection() const;
%End
%If (Qt_4_8_0 -)

    enum Script
    {
        AnyScript,
        ArabicScript,
        CyrillicScript,
        DeseretScript,
        GurmukhiScript,
        SimplifiedHanScript,
        TraditionalHanScript,
        LatinScript,
        MongolianScript,
        TifinaghScript,
        SimplifiedChineseScript,
        TraditionalChineseScript,
%If (Qt_5_0_0 -)
        ArmenianScript,
%End
%If (Qt_5_0_0 -)
        BengaliScript,
%End
%If (Qt_5_0_0 -)
        CherokeeScript,
%End
%If (Qt_5_0_0 -)
        DevanagariScript,
%End
%If (Qt_5_0_0 -)
        EthiopicScript,
%End
%If (Qt_5_0_0 -)
        GeorgianScript,
%End
%If (Qt_5_0_0 -)
        GreekScript,
%End
%If (Qt_5_0_0 -)
        GujaratiScript,
%End
%If (Qt_5_0_0 -)
        HebrewScript,
%End
%If (Qt_5_0_0 -)
        JapaneseScript,
%End
%If (Qt_5_0_0 -)
        KhmerScript,
%End
%If (Qt_5_0_0 -)
        KannadaScript,
%End
%If (Qt_5_0_0 -)
        KoreanScript,
%End
%If (Qt_5_0_0 -)
        LaoScript,
%End
%If (Qt_5_0_0 -)
        MalayalamScript,
%End
%If (Qt_5_0_0 -)
        MyanmarScript,
%End
%If (Qt_5_0_0 -)
        OriyaScript,
%End
%If (Qt_5_0_0 -)
        TamilScript,
%End
%If (Qt_5_0_0 -)
        TeluguScript,
%End
%If (Qt_5_0_0 -)
        ThaanaScript,
%End
%If (Qt_5_0_0 -)
        ThaiScript,
%End
%If (Qt_5_0_0 -)
        TibetanScript,
%End
%If (Qt_5_0_0 -)
        SinhalaScript,
%End
%If (Qt_5_0_0 -)
        SyriacScript,
%End
%If (Qt_5_0_0 -)
        YiScript,
%End
%If (Qt_5_0_0 -)
        VaiScript,
%End
    };

%End
%If (Qt_4_8_0 -)

    enum CurrencySymbolFormat
    {
        CurrencyIsoCode,
        CurrencySymbol,
        CurrencyDisplayName,
    };

%End
%If (Qt_4_8_0 -)
    QLocale(QLocale::Language language, QLocale::Script script, QLocale::Country country);
%End
%If (Qt_4_8_0 -)
    QLocale::Script script() const;
%End
%If (Qt_4_8_0 -)
    QString bcp47Name() const;
%End
%If (Qt_4_8_0 -)
    QString nativeLanguageName() const;
%End
%If (Qt_4_8_0 -)
    QString nativeCountryName() const;
%End
%If (Qt_4_8_0 -)
    Qt::DayOfWeek firstDayOfWeek() const;
%End
%If (Qt_4_8_0 -)
    QList<Qt::DayOfWeek> weekdays() const;
%End
%If (Qt_4_8_0 -)
    QString toUpper(const QString &str) const;
%End
%If (Qt_4_8_0 -)
    QString toLower(const QString &str) const;
%End
%If (Qt_4_8_0 -)
    QString currencySymbol(QLocale::CurrencySymbolFormat format = QLocale::CurrencySymbol) const;
%End
%If (Qt_4_8_0 -)
    QString toCurrencyString(int value /Constrained/, const QString &symbol /DocValue="Py_v3:''"/ = QString()) const;
%End
%If (Qt_4_8_0 -)
    QString toCurrencyString(double value /Constrained/, const QString &symbol /DocValue="Py_v3:''"/ = QString()) const;
%End
%If (Qt_4_8_0 -)
    QString toCurrencyString(qlonglong value, const QString &symbol /DocValue="Py_v3:''"/ = QString()) const;
%End
%If (Qt_4_8_0 -)
    QString toCurrencyString(qulonglong value, const QString &symbol /DocValue="Py_v3:''"/ = QString()) const;
%End
%If (Qt_4_8_0 -)
    QStringList uiLanguages() const;
%End
%If (Qt_4_8_0 -)
    static QString scriptToString(QLocale::Script script);
%End
%If (Qt_4_8_0 -)
    static QList<QLocale> matchingLocales(QLocale::Language language, QLocale::Script script, QLocale::Country country);
%End
%If (Qt_4_8_0 -)

    enum QuotationStyle
    {
        StandardQuotation,
        AlternateQuotation,
    };

%End
%If (Qt_4_8_0 -)
    QString quoteString(const QString &str, QLocale::QuotationStyle style = QLocale::StandardQuotation) const;
%End
%If (Qt_4_8_0 -)
    QString createSeparatedList(const QStringList &list) const;
%End
};

QDataStream &operator<<(QDataStream &, const QLocale & /Constrained/);
QDataStream &operator>>(QDataStream &, QLocale & /Constrained/);
%If (Qt_4_2_0 -)
QFlags<QLocale::NumberOption> operator|(QLocale::NumberOption f1, QFlags<QLocale::NumberOption> f2);
%End
%If (Qt_4_2_0 - Qt_5_0_0)

class QSystemLocale
{
%TypeHeaderCode
#include <qlocale.h>
%End

public:
    QSystemLocale();
    virtual ~QSystemLocale();

    enum QueryType
    {
        LanguageId,
%If (Qt_4_8_0 -)
        ScriptId,
%End
        CountryId,
        DecimalPoint,
        GroupSeparator,
        ZeroDigit,
        NegativeSign,
        DateFormatLong,
        DateFormatShort,
        TimeFormatLong,
        TimeFormatShort,
        DayNameLong,
        DayNameShort,
        MonthNameLong,
        MonthNameShort,
        DateToStringLong,
        DateToStringShort,
        TimeToStringLong,
        TimeToStringShort,
%If (Qt_4_4_0 -)
        DateTimeFormatLong,
%End
%If (Qt_4_4_0 -)
        DateTimeFormatShort,
%End
%If (Qt_4_4_0 -)
        DateTimeToStringLong,
%End
%If (Qt_4_4_0 -)
        DateTimeToStringShort,
%End
%If (Qt_4_4_0 -)
        MeasurementSystem,
%End
%If (Qt_4_5_0 -)
        PositiveSign,
%End
%If (Qt_4_5_0 -)
        AMText,
%End
%If (Qt_4_5_0 -)
        PMText,
%End
%If (Qt_4_8_0 -)
        FirstDayOfWeek,
%End
%If (Qt_4_8_0 -)
        Weekdays,
%End
%If (Qt_4_8_0 -)
        CurrencySymbol,
%End
%If (Qt_4_8_0 -)
        CurrencyToString,
%End
%If (Qt_4_8_0 -)
        UILanguages,
%End
%If (Qt_4_8_0 -)
        StringToStandardQuotation,
%End
%If (Qt_4_8_0 -)
        StringToAlternateQuotation,
%End
%If (Qt_4_8_0 -)
        ListToSeparatedString,
%End
%If (Qt_4_8_0 -)
        LocaleChanged,
%End
%If (Qt_4_8_0 -)
        NativeLanguageName,
%End
%If (Qt_4_8_0 -)
        NativeCountryName,
%End
    };

    virtual QVariant query(QSystemLocale::QueryType type, QVariant in) const;
    virtual QLocale fallbackLocale() const;
};

%End
%If (Qt_4_3_0 -)
// Mapped type for QList<QLocale::Country>.
%MappedType QList<QLocale::Country> /DocType="list-of-QLocale.Country"/
{
%TypeHeaderCode
#include <qlocale.h>
%End

%ConvertFromTypeCode
    // Create the list.
    PyObject *l;

    if ((l = PyList_New(sipCpp->size())) == NULL)
        return NULL;

    // Set the list elements.
    for (int i = 0; i < sipCpp->size(); ++i)
    {
        QLocale::Country e = sipCpp->at(i);
        PyObject *eobj;

        if ((eobj = sipConvertFromEnum(e, sipType_QLocale_Country)) == NULL)
        {
            Py_DECREF(l);

            return NULL;
        }

        PyList_SET_ITEM(l, i, eobj);
    }

    return l;
%End

%ConvertToTypeCode
    // Check the type if that is all that is required.
    if (sipIsErr == NULL)
    {
        if (!PyList_Check(sipPy))
            return 0;

        for (SIP_SSIZE_T i = 0; i < PyList_GET_SIZE(sipPy); ++i)
            if (!sipCanConvertToEnum(PyList_GET_ITEM(sipPy, i), sipType_QLocale_Country))
                return 0;

        return 1;
    }

    QList<QLocale::Country> *ql = new QList<QLocale::Country>;
 
    for (SIP_SSIZE_T i = 0; i < PyList_GET_SIZE(sipPy); ++i)
    {
        long l = SIPLong_AsLong(PyList_GET_ITEM(sipPy, i));
        ql->append(static_cast<QLocale::Country>(l));
    }
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
%End
};
%End
