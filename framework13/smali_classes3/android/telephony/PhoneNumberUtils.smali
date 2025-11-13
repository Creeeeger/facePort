.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
        Landroid/telephony/PhoneNumberUtils$BcdExtendType;
    }
.end annotation


# static fields
.field private static final greylist-max-o BCD_CALLED_PARTY_EXTENDED:Ljava/lang/String; = "*#abc"

.field private static final greylist-max-o BCD_EF_ADN_EXTENDED:Ljava/lang/String; = "*#,N;"

.field public static final whitelist BCD_EXTENDED_TYPE_CALLED_PARTY:I = 0x2

.field public static final whitelist BCD_EXTENDED_TYPE_EF_ADN:I = 0x1

.field private static final greylist-max-o CCC_LENGTH:I

.field private static final greylist-max-o CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final greylist-max-o CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final greylist-max-o COUNTRY_CALLING_CALL:[Z

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist FORMAT_JAPAN:I = 0x2

.field public static final blacklist FORMAT_KOREA:I = 0x52

.field public static final whitelist FORMAT_NANP:I = 0x1

.field public static final whitelist FORMAT_UNKNOWN:I = 0x0

.field private static final greylist-max-o GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "JP"

.field private static final greylist-max-o KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final greylist-max-o KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field private static final blacklist KRNP_STATE_0505_START:I = 0xe

.field private static final blacklist KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final blacklist KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final blacklist KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final blacklist KRNP_STATE_NORMAL:I = 0x5

.field private static final blacklist KRNP_STATE_PLUS:I = 0x9

.field private static final blacklist KRNP_STATE_SHARP:I = 0xd

.field private static final blacklist KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final blacklist KRNP_STATE_STAR:I = 0xc

.field private static final blacklist KRNP_STATE_ZERO_START:I = 0x7

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final blacklist MCC_OTA_URI:Landroid/net/Uri;

.field private static final greylist-max-o NANP_COUNTRIES:[Ljava/lang/String;

.field private static final greylist-max-o NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final greylist-max-o NANP_LENGTH:I = 0xa

.field private static final greylist-max-o NANP_STATE_DASH:I = 0x4

.field private static final greylist-max-o NANP_STATE_DIGIT:I = 0x1

.field private static final greylist-max-o NANP_STATE_ONE:I = 0x3

.field private static final greylist-max-o NANP_STATE_PLUS:I = 0x2

.field private static final blacklist OTALOOKUP_INDEX_AREA_CITY_CODE:I = 0x8

.field private static final blacklist OTALOOKUP_INDEX_COUNTRY_CODE:I = 0x6

.field private static final blacklist OTALOOKUP_INDEX_COUNTRY_NAME:I = 0x1

.field private static final blacklist OTALOOKUP_INDEX_IDD:I = 0x3

.field private static final blacklist OTALOOKUP_INDEX_MCC:I = 0x2

.field private static final blacklist OTALOOKUP_INDEX_NANP:I = 0x5

.field private static final blacklist OTALOOKUP_INDEX_NATIONAL_NUMBER_LENGTH:I = 0x9

.field private static final blacklist OTALOOKUP_INDEX_NBPCD:I = 0x7

.field private static final blacklist OTALOOKUP_INDEX_NDD:I = 0x4

.field public static final blacklist OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final blacklist OTA_COUNTRY_URI:Landroid/net/Uri;

.field public static final whitelist PAUSE:C = ','

.field private static final greylist-max-o PLUS_SIGN_CHAR:C = '+'

.field private static final greylist-max-o PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final blacklist REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field public static final whitelist TOA_International:I = 0x91

.field public static final whitelist TOA_Unknown:I = 0x81

.field public static final whitelist WAIT:C = ';'

.field public static final whitelist WILD:C = 'N'

.field public static blacklist isAssistedDialingNumber:Z

.field private static blacklist isCDMARegistered:Z

.field private static blacklist isGSMRegistered:Z

.field private static blacklist isNANPCountry:Z

.field private static blacklist isNetRoaming:Z

.field private static blacklist isOTANANPCountry:Z

.field private static blacklist mCursor:Landroid/database/Cursor;

.field private static blacklist mCursorCountry:Landroid/database/Cursor;

.field private static blacklist numberLength:I

.field private static blacklist otaCountryCountryCode:Ljava/lang/String;

.field private static blacklist otaCountryIDDPrefix:Ljava/lang/String;

.field private static blacklist otaCountryMCC:Ljava/lang/String;

.field private static blacklist otaCountryNDDPrefix:Ljava/lang/String;

.field private static blacklist otaCountryName:Ljava/lang/String;

.field private static blacklist refCountryAreaCode:Ljava/lang/String;

.field private static blacklist refCountryCountryCode:Ljava/lang/String;

.field private static blacklist refCountryIDDPrefix:Ljava/lang/String;

.field private static blacklist refCountryMCC:Ljava/lang/String;

.field private static blacklist refCountryNDDPrefix:Ljava/lang/String;

.field private static blacklist refCountryName:Ljava/lang/String;

.field private static blacklist refCountryNationalNumberLength:I

.field private static greylist-max-o sConvertToEmergencyMap:[Ljava/lang/String;

.field private static blacklist sMinMatch:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 25

    .line 122
    nop

    .line 123
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 174
    const/4 v0, 0x0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 1278
    const-string v1, "US"

    const-string v2, "CA"

    const-string v3, "AS"

    const-string v4, "AI"

    const-string v5, "AG"

    const-string v6, "BS"

    const-string v7, "BB"

    const-string v8, "BM"

    const-string v9, "VG"

    const-string v10, "KY"

    const-string v11, "DM"

    const-string v12, "DO"

    const-string v13, "GD"

    const-string v14, "GU"

    const-string v15, "JM"

    const-string v16, "PR"

    const-string v17, "MS"

    const-string v18, "MP"

    const-string v19, "KN"

    const-string v20, "LC"

    const-string v21, "VC"

    const-string v22, "TT"

    const-string v23, "TC"

    const-string v24, "VI"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2755
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2757
    const/16 v2, 0x61

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2758
    const/16 v2, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x42

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x43

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2760
    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x65

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x66

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2761
    const/16 v4, 0x44

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x45

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x46

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2763
    const/16 v3, 0x67

    const/16 v4, 0x34

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x68

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x69

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2764
    const/16 v3, 0x47

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x48

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x49

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2766
    const/16 v3, 0x6a

    const/16 v4, 0x35

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6b

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6c

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2767
    const/16 v3, 0x4a

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4b

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4c

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2769
    const/16 v3, 0x6d

    const/16 v4, 0x36

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6e

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6f

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2770
    const/16 v3, 0x4d

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4e

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4f

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2772
    const/16 v3, 0x70

    const/16 v4, 0x37

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x71

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x72

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x73

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2773
    const/16 v3, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x51

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x52

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x53

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2775
    const/16 v3, 0x74

    const/16 v4, 0x38

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x75

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x76

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2776
    const/16 v3, 0x54

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x55

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x56

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2778
    const/16 v3, 0x77

    const/16 v4, 0x39

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x78

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x79

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x7a

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2779
    const/16 v3, 0x57

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x58

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x59

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x5a

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3522
    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3534
    array-length v1, v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 3718
    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 3832
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 3833
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 3834
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 3835
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 3836
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 3837
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 3839
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 3841
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 3842
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 3845
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 3846
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 3847
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 3848
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 3849
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 3850
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 3851
    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    .line 3853
    sput v0, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 3855
    const-string v1, "content://assisteddialing/refcountry"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 3856
    const-string v1, "content://assisteddialing/mcc_otalookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    .line 3857
    const-string v1, "content://assisteddialing/ota_country"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    .line 3860
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 3861
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 19
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .line 3908
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3909
    .local v1, "numberLenReal":I
    move v2, v1

    .line 3910
    .local v2, "numberLenEffective":I
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v4, v6, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v5

    .line 3911
    .local v4, "hasPlus":Z
    :goto_0
    const/16 v8, 0x23

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v6, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v5

    .line 3912
    .local v8, "hasSharp":Z
    :goto_1
    const/16 v9, 0x2a

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v5

    .line 3914
    .local v6, "hasStar":Z
    :goto_2
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 3916
    :cond_3
    if-nez v2, :cond_4

    const/4 v3, 0x0

    return-object v3

    .line 3918
    :cond_4
    add-int/lit8 v9, v2, 0x1

    div-int/lit8 v9, v9, 0x2

    .line 3919
    .local v9, "resultLen":I
    const/4 v10, 0x1

    .line 3920
    .local v10, "extraBytes":I
    if-eqz p1, :cond_5

    add-int/lit8 v10, v10, 0x1

    .line 3921
    :cond_5
    add-int/2addr v9, v10

    .line 3923
    new-array v11, v9, [B

    .line 3925
    .local v11, "result":[B
    const/4 v12, 0x0

    .line 3926
    .local v12, "digitCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v1, :cond_8

    .line 3927
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 3928
    .local v14, "c":C
    if-ne v14, v3, :cond_6

    goto :goto_5

    .line 3929
    :cond_6
    and-int/lit8 v15, v12, 0x1

    if-ne v15, v7, :cond_7

    const/4 v15, 0x4

    goto :goto_4

    :cond_7
    move v15, v5

    .line 3930
    .local v15, "shift":I
    :goto_4
    shr-int/lit8 v16, v12, 0x1

    add-int v16, v10, v16

    aget-byte v17, v11, v16

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v18

    and-int/lit8 v18, v18, 0xf

    shl-int v3, v18, v15

    int-to-byte v3, v3

    or-int v3, v17, v3

    int-to-byte v3, v3

    aput-byte v3, v11, v16

    .line 3931
    add-int/lit8 v12, v12, 0x1

    .line 3926
    .end local v14    # "c":C
    .end local v15    # "shift":I
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x2b

    goto :goto_3

    .line 3935
    .end local v13    # "i":I
    :cond_8
    and-int/lit8 v3, v12, 0x1

    if-ne v3, v7, :cond_9

    shr-int/lit8 v3, v12, 0x1

    add-int/2addr v3, v10

    aget-byte v5, v11, v3

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 3937
    :cond_9
    const/4 v3, 0x0

    .line 3938
    .local v3, "offset":I
    if-eqz p1, :cond_a

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v7, v9, -0x1

    int-to-byte v7, v7

    aput-byte v7, v11, v3

    move v3, v5

    .line 3939
    .end local v5    # "offset":I
    .restart local v3    # "offset":I
    :cond_a
    if-eqz v4, :cond_b

    const/16 v5, 0x91

    goto :goto_6

    :cond_b
    const/16 v5, 0x81

    :goto_6
    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 3942
    if-nez v8, :cond_c

    if-eqz v6, :cond_d

    .line 3943
    :cond_c
    aget-byte v5, v11, v3

    and-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 3947
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TOA: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v7, v11, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3949
    return-object v11
.end method

.method private static blacklist adLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 4329
    const-string v0, "AssistedDialing"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    return-void
.end method

.method public static whitelist addTtsSpan(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .line 3030
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3034
    return-void
.end method

.method private static greylist-max-o appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .line 3382
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 3383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3384
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3385
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3386
    .local v0, "retStr":Ljava/lang/String;
    goto :goto_0

    .line 3389
    .end local v0    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3390
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 3392
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static whitelist areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 3805
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 3808
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 3810
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 3811
    .local v2, "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3814
    .local v3, "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    nop

    .line 3816
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    .line 3817
    .local v4, "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 3820
    :cond_0
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_2

    .line 3821
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_1

    .line 3822
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v7

    if-ne v5, v7, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    nop

    .line 3821
    :goto_0
    return v1

    .line 3824
    :cond_2
    return v1

    .line 3819
    :cond_3
    :goto_1
    return v6

    .line 3812
    .end local v2    # "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :catch_0
    move-exception v2

    .line 3813
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1
.end method

.method private static greylist-max-o bcdToChar(BI)C
    .locals 3
    .param p0, "b"    # B
    .param p1, "bcdExtType"    # I

    .line 1089
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1090
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 1093
    :cond_0
    const/4 v0, 0x0

    .line 1094
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1095
    const-string v0, "*#,N;"

    goto :goto_0

    .line 1096
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1097
    const-string v0, "*#abc"

    .line 1099
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    goto :goto_1

    .line 1103
    :cond_3
    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 1100
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist calledPartyBCDFragmentToString([BIII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1080
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 902
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist calledPartyBCDToString([BIII)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 926
    .local v1, "ret":Ljava/lang/StringBuilder;
    const-string v2, ""

    const/4 v4, 0x2

    if-ge p2, v4, :cond_0

    .line 927
    return-object v2

    .line 931
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 932
    const/4 v0, 0x1

    .line 935
    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v1, p0, v5, v6, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 938
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 940
    return-object v2

    .line 943
    :cond_2
    if-eqz v0, :cond_6

    .line 969
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 970
    .local v5, "retString":Ljava/lang/String;
    const-string v6, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 971
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 972
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "+"

    const/4 v11, 0x3

    if-eqz v8, :cond_4

    .line 973
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x5

    if-eqz v2, :cond_3

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 978
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 987
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 988
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 996
    :cond_4
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 997
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 998
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1003
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 1004
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1011
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 1012
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1013
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "retString":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_6
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2819
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist cdmaCheckAndProcessPlusCode(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 2825
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2826
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2827
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2836
    if-eqz p2, :cond_0

    .line 2837
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 2838
    .local v0, "currIso":Ljava/lang/String;
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultIso":Ljava/lang/String;
    goto :goto_0

    .line 2840
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2841
    .restart local v0    # "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2844
    .restart local v1    # "defaultIso":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2845
    nop

    .line 2846
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 2851
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    .line 2845
    invoke-static {p0, v2, v3, p1, p2}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2856
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static greylist-max-o cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .line 2910
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIILandroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "phoneId"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 2916
    move-object v0, p0

    .line 2918
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2921
    .local v2, "useNanp":Z
    :goto_0
    if-eqz p4, :cond_1

    invoke-static {p3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2922
    const-string v3, "Change useNanp for international dialing feature"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2923
    const/4 v2, 0x1

    .line 2928
    :cond_1
    if-eqz p0, :cond_b

    .line 2929
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 2932
    const/4 v3, 0x0

    .line 2933
    .local v3, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2936
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2945
    :cond_2
    if-eqz v2, :cond_3

    .line 2946
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "networkDialStr":Ljava/lang/String;
    goto :goto_1

    .line 2948
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2956
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :goto_1
    invoke-static {p3}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_4

    goto :goto_2

    .line 2958
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2959
    invoke-static {v5, p3, p4}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeForSpr(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2961
    :cond_5
    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2966
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2967
    if-nez v0, :cond_6

    .line 2968
    move-object v0, v5

    goto :goto_3

    .line 2970
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2979
    :goto_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2980
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2981
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v6

    .line 2984
    .local v6, "dialableIndex":I
    if-lt v6, v1, :cond_7

    .line 2985
    invoke-static {v6, v0, v3}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2988
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 2993
    :cond_7
    if-gez v6, :cond_8

    .line 2994
    const-string v3, ""

    .line 2996
    :cond_8
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    .end local v5    # "networkDialStr":Ljava/lang/String;
    .end local v6    # "dialableIndex":I
    :cond_9
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    .line 2976
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :cond_a
    const-string v1, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    return-object p0

    .line 3002
    .end local v3    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_b
    :goto_5
    return-object v0
.end method

.method public static greylist-max-o cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2868
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2869
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2871
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2872
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2873
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2877
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_0
    return-object p0
.end method

.method private static blacklist charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .line 3888
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3889
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 3890
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 3891
    const/16 v0, 0xa

    return v0

    .line 3892
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 3893
    const/16 v0, 0xb

    return v0

    .line 3894
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 3895
    const/16 v0, 0xc

    return v0

    .line 3896
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 3897
    const/16 v0, 0xd

    return v0

    .line 3898
    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    .line 3899
    const/16 v0, 0xe

    return v0

    .line 3901
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o charToBCD(CI)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "bcdExtType"    # I

    .line 1107
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1108
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1111
    :cond_0
    const/4 v0, 0x0

    .line 1112
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1113
    const-string v0, "*#,N;"

    goto :goto_0

    .line 1114
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1115
    const-string v0, "*#abc"

    .line 1117
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1120
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 1118
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid char for BCD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .line 3685
    const/4 v0, 0x0

    .line 3686
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 3687
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 3688
    if-eqz v0, :cond_0

    .line 3691
    return v2

    .line 3694
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3696
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3698
    return v2

    .line 3700
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3703
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 511
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static whitelist compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .line 519
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static greylist compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "numNonDialableCharsInA":I
    const/4 v1, 0x0

    .line 543
    .local v1, "numNonDialableCharsInB":I
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v2

    .line 545
    .local v2, "minMatch":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 547
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 551
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 552
    .local v5, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v6

    .line 553
    .local v6, "ib":I
    const/4 v7, 0x0

    .line 555
    .local v7, "matched":I
    :goto_0
    if-ltz v5, :cond_6

    if-ltz v6, :cond_6

    .line 557
    const/4 v8, 0x0

    .line 559
    .local v8, "skipCmp":Z
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 561
    .local v9, "ca":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_2

    .line 562
    add-int/lit8 v5, v5, -0x1

    .line 563
    const/4 v8, 0x1

    .line 564
    add-int/lit8 v0, v0, 0x1

    .line 567
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 569
    .local v10, "cb":C
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_3

    .line 570
    add-int/lit8 v6, v6, -0x1

    .line 571
    const/4 v8, 0x1

    .line 572
    add-int/lit8 v1, v1, 0x1

    .line 575
    :cond_3
    if-nez v8, :cond_5

    .line 576
    if-eq v10, v9, :cond_4

    const/16 v11, 0x4e

    if-eq v9, v11, :cond_4

    if-eq v10, v11, :cond_4

    .line 577
    goto :goto_1

    .line 579
    :cond_4
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    .line 581
    .end local v8    # "skipCmp":Z
    .end local v9    # "ca":C
    .end local v10    # "cb":C
    :cond_5
    goto :goto_0

    .line 583
    :cond_6
    :goto_1
    if-ge v7, v2, :cond_8

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    .line 585
    .local v8, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    .line 590
    .local v9, "effectiveBLen":I
    if-ne v8, v9, :cond_7

    if-ne v8, v7, :cond_7

    .line 591
    return v4

    .line 594
    :cond_7
    return v3

    .line 598
    .end local v8    # "effectiveALen":I
    .end local v9    # "effectiveBLen":I
    :cond_8
    if-lt v7, v2, :cond_a

    if-ltz v5, :cond_9

    if-gez v6, :cond_a

    .line 599
    :cond_9
    return v4

    .line 611
    :cond_a
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v8, v6, 0x1

    .line 612
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 614
    return v4

    .line 617
    :cond_b
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v8, v6, 0x1

    .line 618
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 620
    return v4

    .line 623
    :cond_c
    add-int/lit8 v8, v6, 0x1

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_d

    add-int/lit8 v8, v5, 0x1

    .line 624
    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 626
    return v4

    .line 629
    :cond_d
    return v3

    .line 548
    .end local v5    # "ia":I
    .end local v6    # "ib":I
    .end local v7    # "matched":I
    :cond_e
    :goto_2
    return v3

    .line 545
    :cond_f
    :goto_3
    if-ne p0, p1, :cond_10

    move v3, v4

    :cond_10
    return v3
.end method

.method public static greylist compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 638
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 18
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1c

    if-nez v1, :cond_0

    move v2, v3

    goto/16 :goto_7

    .line 649
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 650
    return v4

    .line 653
    :cond_1
    const/4 v5, 0x0

    .line 654
    .local v5, "forwardIndexA":I
    const/4 v6, 0x0

    .line 656
    .local v6, "forwardIndexB":I
    nop

    .line 657
    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 658
    .local v7, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    nop

    .line 659
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v8

    .line 660
    .local v8, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v9, 0x0

    .line 661
    .local v9, "bothHasCountryCallingCode":Z
    const/4 v10, 0x1

    .line 662
    .local v10, "okToIgnorePrefix":Z
    const/4 v11, 0x0

    .line 663
    .local v11, "trunkPrefixIsOmittedA":Z
    const/4 v12, 0x0

    .line 664
    .local v12, "trunkPrefixIsOmittedB":Z
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    .line 665
    iget v13, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    iget v14, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    if-eq v13, v14, :cond_2

    .line 667
    return v4

    .line 671
    :cond_2
    const/4 v10, 0x0

    .line 672
    const/4 v9, 0x1

    .line 673
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 674
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 675
    :cond_3
    if-nez v7, :cond_4

    if-nez v8, :cond_4

    .line 678
    const/4 v10, 0x0

    goto :goto_1

    .line 680
    :cond_4
    if-eqz v7, :cond_5

    .line 681
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_0

    .line 683
    :cond_5
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 684
    .local v13, "tmp":I
    if-ltz v13, :cond_6

    .line 685
    move v5, v13

    .line 686
    const/4 v11, 0x1

    .line 689
    .end local v13    # "tmp":I
    :cond_6
    :goto_0
    if-eqz v8, :cond_7

    .line 690
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 692
    :cond_7
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 693
    .restart local v13    # "tmp":I
    if-ltz v13, :cond_8

    .line 694
    move v6, v13

    .line 695
    const/4 v12, 0x1

    .line 700
    .end local v13    # "tmp":I
    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    .line 701
    .local v13, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    .line 702
    .local v14, "backwardIndexB":I
    :goto_2
    if-lt v13, v5, :cond_d

    if-lt v14, v6, :cond_d

    .line 703
    const/4 v15, 0x0

    .line 704
    .local v15, "skip_compare":Z
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 705
    .local v3, "chA":C
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 706
    .local v4, "chB":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 707
    add-int/lit8 v13, v13, -0x1

    .line 708
    const/4 v15, 0x1

    .line 710
    :cond_9
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 711
    add-int/lit8 v14, v14, -0x1

    .line 712
    const/4 v15, 0x1

    .line 715
    :cond_a
    if-nez v15, :cond_c

    .line 716
    if-eq v3, v4, :cond_b

    .line 717
    const/16 v16, 0x0

    return v16

    .line 719
    :cond_b
    add-int/lit8 v13, v13, -0x1

    .line 720
    add-int/lit8 v14, v14, -0x1

    .line 722
    .end local v3    # "chA":C
    .end local v4    # "chB":C
    .end local v15    # "skip_compare":Z
    :cond_c
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 724
    :cond_d
    if-eqz v10, :cond_15

    .line 725
    if-eqz v11, :cond_e

    if-le v5, v13, :cond_f

    .line 726
    :cond_e
    invoke-static {v0, v5, v13}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_11

    .line 727
    :cond_f
    if-eqz v2, :cond_10

    .line 737
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 739
    :cond_10
    const/4 v3, 0x0

    return v3

    .line 742
    :cond_11
    if-eqz v12, :cond_12

    if-le v6, v14, :cond_13

    .line 743
    :cond_12
    invoke-static {v1, v5, v14}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 744
    :cond_13
    if-eqz v2, :cond_14

    .line 745
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 747
    :cond_14
    const/4 v3, 0x0

    return v3

    .line 760
    :cond_15
    xor-int/lit8 v3, v9, 0x1

    .line 761
    .local v3, "maybeNamp":Z
    :goto_3
    if-lt v13, v5, :cond_18

    .line 762
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 763
    .local v4, "chA":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 764
    if-eqz v3, :cond_16

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v15

    const/4 v2, 0x1

    if-ne v15, v2, :cond_16

    .line 765
    const/4 v2, 0x0

    move v3, v2

    .end local v3    # "maybeNamp":Z
    .local v2, "maybeNamp":Z
    goto :goto_4

    .line 767
    .end local v2    # "maybeNamp":Z
    .restart local v3    # "maybeNamp":Z
    :cond_16
    const/4 v2, 0x0

    return v2

    .line 770
    :cond_17
    :goto_4
    nop

    .end local v4    # "chA":C
    add-int/lit8 v13, v13, -0x1

    .line 771
    move/from16 v2, p2

    goto :goto_3

    .line 772
    :cond_18
    :goto_5
    if-lt v14, v6, :cond_1b

    .line 773
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 774
    .local v2, "chB":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 775
    if-eqz v3, :cond_19

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_19

    .line 776
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_6

    .line 778
    :cond_19
    const/4 v4, 0x0

    return v4

    .line 774
    :cond_1a
    const/4 v4, 0x0

    .line 781
    :goto_6
    nop

    .end local v2    # "chB":C
    add-int/lit8 v14, v14, -0x1

    .line 782
    goto :goto_5

    .line 785
    .end local v3    # "maybeNamp":Z
    :cond_1b
    const/4 v2, 0x1

    return v2

    .line 647
    .end local v5    # "forwardIndexA":I
    .end local v6    # "forwardIndexB":I
    .end local v7    # "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v8    # "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v9    # "bothHasCountryCallingCode":Z
    .end local v10    # "okToIgnorePrefix":Z
    .end local v11    # "trunkPrefixIsOmittedA":Z
    .end local v12    # "trunkPrefixIsOmittedB":Z
    .end local v13    # "backwardIndexA":I
    .end local v14    # "backwardIndexB":I
    :cond_1c
    move v2, v3

    .line 648
    :goto_7
    if-ne v0, v1, :cond_1d

    move v3, v2

    goto :goto_8

    :cond_1d
    move v3, v4

    :goto_8
    return v3
.end method

.method public static greylist-max-o convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 391
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 2732
    if-nez p0, :cond_0

    .line 2733
    return-object p0

    .line 2735
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2736
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 2737
    return-object p0

    .line 2740
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2742
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2743
    aget-char v3, v1, v2

    .line 2745
    .local v3, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 2742
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2748
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static greylist convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 402
    if-nez p0, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 406
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 408
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 409
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 411
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    const/16 v3, 0x2c

    goto :goto_1

    .line 413
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    const/16 v3, 0x3b

    .line 416
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 21
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fixedNetwork"    # I

    .line 4000
    move-object/from16 v1, p1

    const-string v0, "011"

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4001
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 4003
    .local v3, "numberLength":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4004
    .local v5, "c":C
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v6

    const/16 v7, 0x2b

    const-string v8, "PhoneNumberUtils"

    if-nez v6, :cond_1

    if-ne v7, v5, :cond_0

    goto :goto_0

    .line 4007
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS Destination Number might be email address"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    return-object v2

    .line 4005
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS Destination Number is OK "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    .line 4013
    .local v6, "subId":I
    const-string/jumbo v9, "phone"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v9

    .line 4014
    .local v9, "mdn":Ljava/lang/String;
    invoke-static {v6, v2, v9, v1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 4016
    return-object v2

    .line 4019
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4021
    .local v10, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 4022
    .local v11, "numberBeginsWithOTAIDDPrefix":Z
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_3

    move v12, v13

    goto :goto_1

    :cond_3
    move v12, v4

    .line 4023
    .local v12, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_1
    const/4 v14, 0x5

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 4025
    .local v14, "debugNumber":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS Destination numberLength: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " otaCountryIDDPrefix: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " number : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "**********"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4032
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 4046
    :pswitch_0
    :try_start_1
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4047
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    goto :goto_2

    .line 4041
    :pswitch_1
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4042
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 4043
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 4044
    goto :goto_2

    .line 4036
    :pswitch_2
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4037
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 4038
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4039
    goto :goto_2

    .line 4195
    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .end local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v11    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v12    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v14    # "debugNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v17, v3

    goto/16 :goto_d

    .line 4034
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    .restart local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .restart local v11    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v12    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v14    # "debugNumber":Ljava/lang/String;
    :pswitch_3
    nop

    .line 4054
    :goto_2
    const/4 v7, 0x0

    .line 4056
    .local v7, "findIDDLen":I
    :try_start_2
    sget-boolean v15, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v4, 0x31

    const/16 v13, 0xb

    if-eqz v15, :cond_14

    .line 4057
    :try_start_3
    sget-boolean v15, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v15, :cond_6

    .line 4058
    const-string v15, "Address Rule in VZW Network"

    invoke-static {v8, v15}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 4060
    if-eqz v12, :cond_5

    if-lt v3, v13, :cond_5

    if-ne v3, v13, :cond_4

    if-eq v4, v5, :cond_5

    .line 4061
    :cond_4
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4062
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4069
    :cond_5
    const/4 v0, 0x1

    invoke-static {v2, v0, v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4071
    :cond_6
    const-string v15, "Address Rule in CDMA Internatinal Roaming"

    invoke-static {v8, v15}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v15

    if-nez v15, :cond_8

    const/16 v15, 0x2b

    if-ne v15, v5, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v18, v6

    move-object/from16 v20, v9

    goto/16 :goto_8

    .line 4073
    :cond_8
    :goto_3
    if-lt v3, v13, :cond_13

    if-ne v3, v13, :cond_a

    if-eq v4, v5, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v18, v6

    move-object/from16 v20, v9

    goto/16 :goto_8

    .line 4074
    :cond_a
    :goto_4
    add-int/lit8 v15, v3, -0xb

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 4075
    .local v15, "nanpStr":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "iddPrefix":Ljava/lang/String;
    const/16 v18, 0x0

    .line 4077
    .local v18, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 4078
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v17, v19

    .line 4079
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_5

    .line 4077
    :cond_b
    move-object/from16 v4, v18

    .line 4082
    .end local v18    # "numberAfterIDDPrefix":Ljava/lang/String;
    .local v4, "numberAfterIDDPrefix":Ljava/lang/String;
    :goto_5
    if-eqz v11, :cond_f

    .line 4083
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v7, v13

    .line 4084
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4086
    .local v13, "newStr":Ljava/lang/String;
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v18, v6

    .end local v6    # "subId":I
    .local v18, "subId":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v20, v9

    .end local v9    # "mdn":Ljava/lang/String;
    .local v20, "mdn":Ljava/lang/String;
    add-int/lit8 v9, v7, 0xb

    if-ne v6, v9, :cond_d

    .line 4087
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4086
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_c
    move/from16 v18, v6

    move-object/from16 v20, v9

    .line 4088
    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    :cond_d
    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4089
    const-string v6, "Found Country Code after IDD"

    invoke-static {v8, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4091
    const/4 v6, 0x0

    invoke-virtual {v10, v6, v7, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4093
    :cond_e
    const-string v0, "No Condition"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4097
    :goto_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4100
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_f
    move/from16 v18, v6

    move-object/from16 v20, v9

    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    const/16 v6, 0x2b

    if-ne v6, v5, :cond_12

    .line 4101
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4103
    .local v6, "newStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v13, 0xc

    if-ne v9, v13, :cond_10

    .line 4104
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4105
    :cond_10
    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 4106
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4107
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4109
    :cond_11
    const-string v0, "1NANP is not matched"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4113
    :goto_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4116
    .end local v6    # "newStr":Ljava/lang/String;
    :cond_12
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 4117
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4118
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .line 4073
    .end local v4    # "numberAfterIDDPrefix":Ljava/lang/String;
    .end local v15    # "nanpStr":Ljava/lang/String;
    .end local v17    # "iddPrefix":Ljava/lang/String;
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .local v6, "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_13
    move/from16 v18, v6

    move-object/from16 v20, v9

    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    goto :goto_8

    .line 4056
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_14
    move/from16 v18, v6

    move-object/from16 v20, v9

    .line 4126
    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    :cond_15
    :goto_8
    :try_start_4
    sget-boolean v4, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v4, :cond_24

    .line 4127
    const-string v4, "Address Rule in GSM/UMTS"

    invoke-static {v8, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_17

    const/16 v4, 0x2b

    if-ne v4, v5, :cond_16

    goto :goto_9

    :cond_16
    move/from16 v17, v3

    goto/16 :goto_c

    .line 4130
    :cond_17
    :goto_9
    const/16 v4, 0xb

    if-lt v3, v4, :cond_23

    if-ne v3, v4, :cond_19

    const/16 v4, 0x31

    if-eq v4, v5, :cond_18

    goto :goto_a

    :cond_18
    move/from16 v17, v3

    goto/16 :goto_c

    .line 4131
    :cond_19
    :goto_a
    add-int/lit8 v4, v3, -0xb

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 4132
    .local v4, "nanpStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "iddPrefix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4135
    .local v9, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v11, :cond_1a

    .line 4136
    :try_start_5
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object v6, v13

    .line 4137
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v9, v13

    .line 4140
    :cond_1a
    if-eqz v11, :cond_1e

    .line 4143
    :try_start_6
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v7, v13

    .line 4144
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4146
    .restart local v13    # "newStr":Ljava/lang/String;
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v17, v3

    .end local v3    # "numberLength":I
    .local v17, "numberLength":I
    add-int/lit8 v3, v7, 0xb

    if-ne v15, v3, :cond_1c

    .line 4147
    :try_start_7
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "+"

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v0, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4149
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4146
    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :cond_1b
    move/from16 v17, v3

    .line 4150
    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    :cond_1c
    invoke-static {v9, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4151
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4152
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4153
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4155
    :cond_1d
    const-string v0, "No condition is matched in IDD"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4162
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :cond_1e
    move/from16 v17, v3

    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    const/16 v3, 0x2b

    if-ne v3, v5, :cond_22

    .line 4163
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 4164
    .local v3, "iddStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0xc

    if-ne v13, v15, :cond_1f

    .line 4166
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4167
    :cond_1f
    invoke-static {v3, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 4169
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4170
    .restart local v13    # "newStr":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4171
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4172
    .end local v13    # "newStr":Ljava/lang/String;
    :cond_20
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4173
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4175
    :cond_21
    const-string v0, "No condition is matched in \'+\'"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4179
    :goto_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4183
    .end local v3    # "iddStr":Ljava/lang/String;
    :cond_22
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4184
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4130
    .end local v4    # "nanpStr":Ljava/lang/String;
    .end local v6    # "iddPrefix":Ljava/lang/String;
    .end local v9    # "numberAfterIDDPrefix":Ljava/lang/String;
    .end local v17    # "numberLength":I
    .local v3, "numberLength":I
    :cond_23
    move/from16 v17, v3

    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    goto :goto_c

    .line 4126
    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :cond_24
    move/from16 v17, v3

    .line 4192
    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    :cond_25
    :goto_c
    const-string v0, "Can\'t find any match in this number"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 4193
    return-object v2

    .line 4195
    .end local v7    # "findIDDLen":I
    .end local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v11    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v12    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v14    # "debugNumber":Ljava/lang/String;
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_d

    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :catch_2
    move-exception v0

    move/from16 v17, v3

    .line 4196
    .end local v3    # "numberLength":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "numberLength":I
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot convert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "source"    # Landroid/net/Uri;

    .line 3271
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3273
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3275
    return-object p0

    .line 3278
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 3279
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3281
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 3283
    return-object p0

    .line 3285
    :cond_1
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 3287
    const/4 v3, 0x0

    const-string/jumbo v4, "tel"

    invoke-static {v4, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o convertToEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 3731
    if-eqz p0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3735
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3738
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3739
    return-object p1

    .line 3742
    :cond_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 3743
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 3748
    :cond_2
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-eqz v1, :cond_a

    array-length v2, v1

    if-nez v2, :cond_3

    goto :goto_3

    .line 3752
    :cond_3
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_9

    aget-object v5, v1, v4

    .line 3754
    .local v5, "convertMap":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3755
    .local v6, "entry":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3756
    .local v7, "filterNumbers":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3757
    .local v8, "convertedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3758
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3760
    :cond_4
    if-eqz v6, :cond_5

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 3761
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 3762
    aget-object v9, v6, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 3763
    aget-object v9, v6, v3

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3767
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v7, :cond_8

    array-length v9, v7

    if-nez v9, :cond_6

    .line 3769
    goto :goto_2

    .line 3772
    :cond_6
    array-length v9, v7

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v11, v7, v10

    .line 3775
    .local v11, "filterNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3778
    return-object v8

    .line 3772
    .end local v11    # "filterNumber":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3752
    .end local v5    # "convertMap":Ljava/lang/String;
    .end local v6    # "entry":[Ljava/lang/String;
    .end local v7    # "filterNumbers":[Ljava/lang/String;
    .end local v8    # "convertedNumber":Ljava/lang/String;
    :cond_8
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3782
    :cond_9
    return-object p1

    .line 3749
    :cond_a
    :goto_3
    return-object p1

    .line 3732
    .end local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_b
    :goto_4
    return-object p1
.end method

.method public static whitelist createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .locals 5
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .line 3076
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3077
    return-object v0

    .line 3081
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 3082
    .local v1, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 3087
    .local v2, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-virtual {v1, p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 3089
    goto :goto_0

    .line 3088
    :catch_0
    move-exception v0

    .line 3092
    :goto_0
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 3093
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v2, :cond_1

    .line 3096
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_1

    .line 3098
    :cond_1
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3099
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 3101
    :cond_2
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 3103
    :goto_1
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 3013
    if-nez p0, :cond_0

    .line 3014
    const/4 v0, 0x0

    return-object v0

    .line 3016
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 3017
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 3018
    return-object v0
.end method

.method private static blacklist displayAssistedParams()V
    .locals 2

    .line 4307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), refCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryAreaCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryNationalNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGSMRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCDMARegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isNetRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), otaCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOTANANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4325
    return-void
.end method

.method public static blacklist docomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3959
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3960
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 288
    if-nez p0, :cond_0

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 293
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 296
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 298
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 299
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 300
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_1
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_4

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "*31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "#31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_3
    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    :cond_5
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 310
    goto :goto_2

    .line 295
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "i":I
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 328
    if-nez p0, :cond_0

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 333
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 334
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 336
    .local v2, "haveSeenPlus":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 337
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 338
    .local v4, "c":C
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 339
    if-eqz v2, :cond_1

    .line 340
    goto :goto_1

    .line 342
    :cond_1
    const/4 v2, 0x1

    .line 344
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 345
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    :cond_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    goto :goto_2

    .line 336
    .end local v4    # "c":C
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v3    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 471
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 478
    .local v1, "trimIndex":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 479
    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 481
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 482
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .line 3366
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3367
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3368
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3369
    return v0

    .line 3366
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3372
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1551
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1552
    return-void
.end method

.method public static blacklist formatKRnpNumber(Landroid/text/Editable;)V
    .locals 16
    .param p0, "text"    # Landroid/text/Editable;

    .line 1611
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1614
    .local v1, "length":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1615
    .local v2, "lengthRemovedDash":I
    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    .line 1617
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1618
    return-void

    .line 1619
    :cond_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 1621
    return-void

    .line 1624
    :cond_1
    const/4 v5, 0x5

    .line 1625
    .local v5, "state":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "Digits":Ljava/lang/String;
    const/16 v7, 0x2d

    const/4 v8, 0x6

    if-ge v1, v8, :cond_4

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1628
    const/4 v3, 0x0

    .line 1629
    .local v3, "p":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1630
    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1631
    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1633
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1636
    :cond_3
    return-void

    .line 1640
    .end local v3    # "p":I
    :cond_4
    const/4 v9, 0x0

    .line 1641
    .local v9, "p":I
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 1642
    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_6

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_5

    goto :goto_2

    .line 1645
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1643
    :cond_6
    :goto_2
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1648
    :cond_7
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-eq v1, v10, :cond_8

    .line 1649
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1651
    :cond_8
    const/4 v10, 0x1

    if-ge v1, v10, :cond_9

    return-void

    .line 1654
    :cond_9
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/4 v7, 0x4

    if-ne v12, v13, :cond_e

    .line 1655
    if-ge v1, v4, :cond_a

    return-void

    .line 1656
    :cond_a
    invoke-interface {v0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x32

    if-ne v12, v13, :cond_b

    .line 1657
    const/4 v5, 0x6

    goto/16 :goto_5

    .line 1659
    :cond_b
    if-ge v1, v15, :cond_c

    return-void

    .line 1660
    :cond_c
    const-string v12, "050"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1661
    const/16 v5, 0xe

    goto/16 :goto_5

    .line 1663
    :cond_d
    const/4 v5, 0x7

    goto/16 :goto_5

    .line 1666
    :cond_e
    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2a

    if-ne v12, v13, :cond_15

    .line 1667
    if-ge v1, v7, :cond_f

    return-void

    .line 1668
    :cond_f
    const-string v12, "*23#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "*22#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "*31#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_3

    .line 1671
    :cond_10
    const-string v12, "*230#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1672
    if-le v1, v8, :cond_11

    return-void

    .line 1673
    :cond_11
    const/16 v5, 0xb

    goto :goto_5

    .line 1676
    :cond_12
    return-void

    .line 1669
    :cond_13
    :goto_3
    if-le v1, v14, :cond_14

    return-void

    .line 1670
    :cond_14
    const/16 v5, 0xa

    goto :goto_5

    .line 1678
    :cond_15
    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-ne v12, v13, :cond_1b

    .line 1679
    if-ge v1, v4, :cond_16

    return-void

    .line 1680
    :cond_16
    invoke-interface {v0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x39

    if-ne v12, v13, :cond_18

    .line 1681
    if-le v1, v15, :cond_17

    return-void

    .line 1682
    :cond_17
    const/16 v5, 0x8

    goto :goto_5

    .line 1683
    :cond_18
    const-string v12, "#31#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1684
    if-le v1, v14, :cond_19

    return-void

    .line 1685
    :cond_19
    const/16 v5, 0xa

    goto :goto_5

    .line 1688
    :cond_1a
    return-void

    .line 1690
    :cond_1b
    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2b

    const/16 v15, 0xe

    if-ne v12, v13, :cond_1e

    .line 1691
    if-lt v1, v8, :cond_1d

    if-le v1, v15, :cond_1c

    goto :goto_4

    .line 1692
    :cond_1c
    const/16 v5, 0x9

    goto :goto_5

    .line 1691
    :cond_1d
    :goto_4
    return-void

    .line 1694
    :cond_1e
    if-lt v1, v14, :cond_35

    if-le v1, v15, :cond_1f

    goto/16 :goto_9

    .line 1695
    :cond_1f
    const/4 v5, 0x5

    .line 1699
    :goto_5
    invoke-interface {v0, v11, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1701
    .local v12, "saved":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1702
    :goto_6
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v13

    if-ge v9, v13, :cond_21

    .line 1703
    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    const/16 v15, 0x2d

    if-ne v13, v15, :cond_20

    .line 1704
    add-int/lit8 v13, v9, 0x1

    invoke-interface {v0, v9, v13}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_6

    .line 1706
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1710
    :cond_21
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1712
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "3003003000"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 1713
    const-string v3, "300-300-3000"

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1714
    return-void

    .line 1720
    :cond_22
    new-array v13, v4, [I

    .line 1721
    .local v13, "dashPositions":[I
    const/4 v15, 0x0

    .line 1724
    .local v15, "numDashes":I
    const/16 v8, 0x8

    packed-switch v5, :pswitch_data_0

    .line 1839
    :pswitch_0
    invoke-interface {v0, v11, v1, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1840
    return-void

    .line 1746
    :pswitch_1
    if-gt v1, v7, :cond_23

    .line 1747
    const/4 v15, 0x0

    .line 1748
    goto/16 :goto_7

    .line 1749
    :cond_23
    if-gt v1, v8, :cond_24

    .line 1750
    aput v7, v13, v11

    .line 1751
    const/4 v15, 0x1

    .line 1752
    goto/16 :goto_7

    .line 1753
    :cond_24
    const/16 v4, 0xb

    if-le v1, v8, :cond_25

    if-gt v1, v4, :cond_25

    .line 1754
    aput v7, v13, v11

    .line 1755
    add-int/lit8 v4, v1, -0x4

    aput v4, v13, v10

    .line 1756
    const/4 v15, 0x2

    .line 1757
    goto/16 :goto_7

    .line 1758
    :cond_25
    if-le v1, v4, :cond_32

    .line 1759
    aput v7, v13, v11

    .line 1760
    aput v8, v13, v10

    .line 1761
    const/4 v15, 0x2

    goto/16 :goto_7

    .line 1804
    :pswitch_2
    if-gt v1, v14, :cond_26

    .line 1805
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1807
    :cond_26
    aput v14, v13, v11

    .line 1808
    const/4 v15, 0x1

    .line 1810
    goto/16 :goto_7

    .line 1795
    :pswitch_3
    if-gt v1, v7, :cond_27

    .line 1796
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1798
    :cond_27
    aput v7, v13, v11

    .line 1799
    const/4 v15, 0x1

    .line 1801
    goto/16 :goto_7

    .line 1813
    :pswitch_4
    if-gt v1, v8, :cond_28

    .line 1814
    add-int/lit8 v4, v1, -0x4

    aput v4, v13, v11

    .line 1815
    const/4 v15, 0x1

    .line 1816
    goto/16 :goto_7

    .line 1817
    :cond_28
    if-le v1, v8, :cond_32

    .line 1818
    aput v7, v13, v11

    .line 1819
    const/4 v15, 0x1

    goto/16 :goto_7

    .line 1786
    :pswitch_5
    if-gt v1, v4, :cond_29

    .line 1787
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1789
    :cond_29
    aput v4, v13, v11

    .line 1790
    const/4 v15, 0x1

    .line 1792
    goto :goto_7

    .line 1726
    :pswitch_6
    const/4 v4, 0x3

    if-gt v1, v4, :cond_2a

    .line 1727
    const/4 v15, 0x0

    .line 1728
    goto :goto_7

    .line 1729
    :cond_2a
    const/4 v7, 0x7

    if-gt v1, v7, :cond_2b

    .line 1730
    aput v4, v13, v11

    .line 1731
    const/4 v15, 0x1

    .line 1732
    goto :goto_7

    .line 1733
    :cond_2b
    const/16 v8, 0xa

    if-le v1, v7, :cond_2c

    if-gt v1, v8, :cond_2c

    .line 1734
    aput v4, v13, v11

    .line 1735
    add-int/lit8 v4, v1, -0x4

    aput v4, v13, v10

    .line 1736
    const/4 v15, 0x2

    .line 1737
    goto :goto_7

    .line 1738
    :cond_2c
    if-le v1, v8, :cond_32

    .line 1739
    const/4 v4, 0x3

    aput v4, v13, v11

    .line 1740
    const/4 v4, 0x7

    aput v4, v13, v10

    .line 1741
    const/4 v15, 0x2

    goto :goto_7

    .line 1766
    :pswitch_7
    if-gt v1, v4, :cond_2d

    .line 1767
    const/4 v15, 0x0

    .line 1768
    goto :goto_7

    .line 1769
    :cond_2d
    const/4 v7, 0x6

    if-gt v1, v7, :cond_2e

    .line 1770
    aput v4, v13, v11

    .line 1771
    const/4 v15, 0x1

    .line 1772
    goto :goto_7

    .line 1773
    :cond_2e
    const/16 v8, 0x9

    if-le v1, v7, :cond_2f

    if-gt v1, v8, :cond_2f

    .line 1774
    aput v4, v13, v11

    .line 1775
    add-int/lit8 v4, v1, -0x4

    aput v4, v13, v10

    .line 1776
    const/4 v15, 0x2

    .line 1777
    goto :goto_7

    .line 1778
    :cond_2f
    if-le v1, v8, :cond_32

    .line 1779
    aput v4, v13, v11

    .line 1780
    const/4 v4, 0x6

    aput v4, v13, v10

    .line 1781
    const/4 v15, 0x2

    goto :goto_7

    .line 1824
    :pswitch_8
    const/4 v4, 0x3

    if-gt v1, v4, :cond_30

    .line 1825
    const/4 v15, 0x0

    .line 1826
    goto :goto_7

    .line 1827
    :cond_30
    const/4 v8, 0x7

    if-gt v1, v8, :cond_31

    .line 1828
    aput v4, v13, v11

    .line 1829
    const/4 v15, 0x1

    .line 1830
    goto :goto_7

    .line 1831
    :cond_31
    if-le v1, v8, :cond_32

    .line 1832
    aput v7, v13, v11

    .line 1833
    const/4 v15, 0x1

    .line 1844
    :cond_32
    :goto_7
    if-eqz v15, :cond_34

    .line 1845
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v15, :cond_34

    .line 1846
    aget v7, v13, v4

    .line 1847
    .local v7, "pos":I
    add-int v8, v7, v4

    if-ltz v8, :cond_33

    add-int v8, v7, v4

    if-gt v8, v1, :cond_33

    .line 1848
    add-int v8, v7, v4

    add-int v10, v7, v4

    invoke-interface {v0, v8, v10, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1845
    .end local v7    # "pos":I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1852
    .end local v4    # "i":I
    :cond_34
    return-void

    .line 1694
    .end local v12    # "saved":Ljava/lang/CharSequence;
    .end local v13    # "dashPositions":[I
    .end local v15    # "numDashes":I
    :cond_35
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist formatNanpNumber(Landroid/text/Editable;)V
    .locals 11
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1435
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1436
    .local v0, "length":I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1438
    return-void

    .line 1439
    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 1441
    return-void

    .line 1444
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1447
    .local v2, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1448
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1453
    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 1454
    .local v4, "dashPositions":[I
    const/4 v5, 0x0

    .line 1456
    .local v5, "numDashes":I
    const/4 v6, 0x1

    .line 1457
    .local v6, "state":I
    const/4 v7, 0x0

    .line 1458
    .local v7, "numDigits":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_9

    .line 1459
    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    .line 1460
    .local v9, "c":C
    const/4 v10, 0x2

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 1462
    :pswitch_1
    if-eqz v7, :cond_2

    if-ne v6, v10, :cond_3

    .line 1463
    :cond_2
    const/4 v6, 0x3

    .line 1464
    goto :goto_2

    .line 1476
    :cond_3
    :pswitch_2
    if-ne v6, v10, :cond_4

    .line 1478
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1479
    return-void

    .line 1480
    :cond_4
    if-ne v6, v3, :cond_5

    .line 1482
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .local v10, "numDashes":I
    aput v8, v4, v5

    move v5, v10

    goto :goto_1

    .line 1483
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_5
    const/4 v10, 0x4

    if-eq v6, v10, :cond_7

    if-eq v7, v3, :cond_6

    const/4 v10, 0x6

    if-ne v7, v10, :cond_7

    .line 1485
    :cond_6
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v10    # "numDashes":I
    aput v8, v4, v5

    move v5, v10

    .line 1487
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_7
    :goto_1
    const/4 v6, 0x1

    .line 1488
    add-int/lit8 v7, v7, 0x1

    .line 1489
    goto :goto_2

    .line 1492
    :pswitch_3
    const/4 v6, 0x4

    .line 1493
    goto :goto_2

    .line 1496
    :pswitch_4
    if-nez v8, :cond_8

    .line 1498
    const/4 v6, 0x2

    .line 1499
    nop

    .line 1458
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1504
    .restart local v9    # "c":C
    :cond_8
    :goto_3
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1505
    return-void

    .line 1509
    .end local v8    # "i":I
    .end local v9    # "c":C
    :cond_9
    const/4 v1, 0x7

    if-ne v7, v1, :cond_a

    .line 1511
    add-int/lit8 v5, v5, -0x1

    .line 1515
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v5, :cond_b

    .line 1516
    aget v3, v4, v1

    .line 1517
    .local v3, "pos":I
    add-int v8, v3, v1

    add-int v9, v3, v1

    const-string v10, "-"

    invoke-interface {p0, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1515
    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1521
    .end local v1    # "i":I
    :cond_b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1522
    .local v1, "len":I
    :goto_5
    if-lez v1, :cond_c

    .line 1523
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_c

    .line 1524
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1525
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1530
    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static whitelist formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1321
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1322
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1323
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1341
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1342
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1343
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1964
    const-string v0, "JP"

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 1968
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 1969
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 1970
    .local v2, "result":Ljava/lang/String;
    const-string v3, "KOR"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v3

    const-string v5, "KR"

    if-eqz v3, :cond_6

    .line 1971
    const-string v0, "000"

    .line 1972
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 1973
    .local v3, "numeric":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 1975
    .local v6, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    .line 1976
    const/4 v7, 0x3

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1979
    :cond_1
    const-string v4, "+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1980
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "ko"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "050"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "450"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1984
    :cond_2
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 1985
    .local v4, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1987
    .end local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    goto :goto_3

    .line 1986
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1981
    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1991
    :cond_4
    :try_start_1
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 1997
    .restart local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1998
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v7

    invoke-virtual {v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    if-ne v7, v5, :cond_5

    .line 1999
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v5

    sget-object v7, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v5, v7, :cond_5

    .line 2000
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v4, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_2

    .line 2002
    :cond_5
    invoke-virtual {v1, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v5

    .line 2005
    .end local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_2
    goto :goto_3

    .line 2004
    :catch_1
    move-exception v4

    .line 2007
    :goto_3
    return-object v2

    .line 2011
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v6    # "locale":Ljava/util/Locale;
    :cond_6
    :try_start_2
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 2013
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2014
    if-eqz v2, :cond_7

    .line 2015
    return-object v2

    .line 2019
    :cond_7
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2020
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 2021
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v4, v5, :cond_8

    .line 2028
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto :goto_4

    .line 2029
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2030
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_9

    .line 2031
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v0, v4, :cond_9

    .line 2037
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_4

    .line 2039
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2042
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v0    # "result":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 2041
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 2043
    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 1965
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :cond_a
    :goto_6
    return-object p0
.end method

.method public static whitelist formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 2066
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2067
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2068
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2069
    return-object p0

    .line 2067
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2072
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2074
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    .line 2075
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    .line 2079
    :try_start_0
    const-string v2, "ZZ"

    invoke-virtual {v1, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2080
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2081
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2083
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v4, :cond_2

    .line 2084
    move-object p2, v3

    .line 2087
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 2086
    :catch_0
    move-exception v2

    .line 2089
    :cond_3
    :goto_1
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2090
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    move-object v3, p0

    :goto_2
    return-object v3
.end method

.method public static whitelist formatNumber(Landroid/text/Editable;I)V
    .locals 9
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1374
    move v0, p1

    .line 1376
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "KOR"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v4, :cond_3

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_3

    .line 1377
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    .line 1378
    const/4 v0, 0x1

    goto :goto_0

    .line 1379
    :cond_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    const/16 v7, 0x38

    const/4 v8, 0x3

    if-lt v5, v8, :cond_1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 1380
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1381
    const/4 v0, 0x2

    goto :goto_0

    .line 1383
    :cond_1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1384
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v5, v8, :cond_2

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v4, 0x32

    if-ne v1, v4, :cond_2

    .line 1385
    const/16 v0, 0x52

    goto :goto_0

    .line 1388
    :cond_2
    const/4 v0, 0x0

    .line 1392
    :cond_3
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1410
    return-void

    .line 1401
    :sswitch_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1402
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatKRnpNumber(Landroid/text/Editable;)V

    .line 1404
    :cond_4
    return-void

    .line 1397
    :sswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 1398
    return-void

    .line 1394
    :sswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 1395
    return-void

    .line 1407
    :sswitch_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1408
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 3
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1909
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1911
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1912
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1913
    invoke-virtual {v0, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1912
    .end local v1    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    goto :goto_0

    .line 1915
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 1917
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1879
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1890
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCurrentIdp(Z)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z

    .line 3122
    const/4 v0, 0x0

    .line 3123
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 3124
    const-string v0, "011"

    goto :goto_0

    .line 3127
    :cond_0
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_idp_string()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 3129
    :goto_0
    return-object v0
.end method

.method private static greylist-max-o getDefaultVoiceSubId()I
    .locals 1

    .line 3710
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static whitelist getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1359
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static greylist-max-o getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "country"    # Ljava/lang/String;

    .line 3142
    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3143
    const-string v0, "KR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3144
    const/16 v0, 0x52

    return v0

    .line 3149
    :cond_0
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 3150
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3151
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 3152
    const/4 v1, 0x1

    return v1

    .line 3150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3155
    .end local v2    # "i":I
    :cond_2
    const-string/jumbo v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 3156
    const/4 v1, 0x2

    return v1

    .line 3158
    :cond_3
    return v1
.end method

.method private static blacklist getMinMatch()I
    .locals 3

    .line 177
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 189
    :cond_0
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    return v0
.end method

.method public static blacklist getMinMatchForTest()I
    .locals 1

    .line 198
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v0

    return v0
.end method

.method public static whitelist getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 228
    .local v7, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v7, :cond_0

    .line 229
    return-object v1

    .line 232
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "scheme":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 234
    return-object v1

    .line 237
    :cond_1
    const-string/jumbo v2, "tel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "sip"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 241
    :cond_2
    if-nez p1, :cond_3

    .line 242
    return-object v1

    .line 245
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "authority":Ljava/lang/String;
    const-string v2, "contacts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 251
    const-string/jumbo v1, "number"

    move-object v11, v1

    goto :goto_0

    .line 252
    :cond_4
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    const-string v1, "data1"

    move-object v11, v1

    goto :goto_0

    .line 252
    :cond_5
    move-object v11, v1

    .line 256
    .end local v1    # "phoneColumn":Ljava/lang/String;
    .local v11, "phoneColumn":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    .line 258
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v12, v1

    .line 260
    if-eqz v12, :cond_6

    .line 261
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 268
    :cond_6
    if-eqz v12, :cond_7

    .line 269
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "PhoneNumberUtils"

    const-string v3, "Error getting phone number."

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    nop

    .end local v1    # "e":Ljava/lang/RuntimeException;
    if-eqz v12, :cond_7

    .line 269
    goto :goto_1

    .line 273
    :cond_7
    :goto_2
    return-object v0

    .line 268
    :goto_3
    if-eqz v12, :cond_8

    .line 269
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_8
    throw v1

    .line 238
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "phoneColumn":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_9
    :goto_4
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getOtaCountry(ILandroid/content/Context;Z)Landroid/database/Cursor;
    .locals 10
    .param p0, "subId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useSharedPreference"    # Z

    .line 4334
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4335
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "otaCountryMccKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4337
    .local v1, "spOtaCountryMcc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 4338
    .local v8, "otacr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 4340
    .local v9, "c":Landroid/database/Cursor;
    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4343
    :cond_0
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v7, 0x0

    const-string/jumbo v5, "mcc=?"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .end local v9    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    goto :goto_1

    .line 4341
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4346
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    :goto_1
    return-object v2
.end method

.method public static whitelist getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 822
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 826
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3236
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3237
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 3238
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3240
    :cond_0
    if-gez v0, :cond_1

    .line 3241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3245
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 449
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 450
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 452
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 454
    .local v3, "trimIndex":I
    if-gez v3, :cond_0

    .line 455
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 457
    :cond_0
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static greylist-max-o internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bcdExtType"    # I

    .line 1024
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_3

    .line 1028
    aget-byte v1, p1, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v1, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1030
    .local v1, "c":C
    if-nez v1, :cond_0

    .line 1031
    return-void

    .line 1033
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1042
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1044
    .local v3, "b":B
    if-ne v3, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    add-int v4, p3, p2

    if-ne v2, v4, :cond_1

    .line 1046
    goto :goto_1

    .line 1049
    :cond_1
    invoke-static {v3, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1050
    if-nez v1, :cond_2

    .line 1051
    return-void

    .line 1054
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1024
    .end local v1    # "c":C
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method private static greylist-max-o internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .line 835
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 837
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 838
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 840
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    move v3, v1

    .line 841
    .local v3, "s":I
    :goto_0
    if-ltz v2, :cond_1

    sub-int v4, v3, v2

    if-gt v4, p1, :cond_1

    .line 843
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 845
    .local v4, "c":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    .end local v4    # "c":C
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 848
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final whitelist is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 134
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .line 3540
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final whitelist isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 140
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1147
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1148
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    const/4 v2, 0x0

    return v2

    .line 1147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2180
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2344
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2158
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2325
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .line 2461
    if-eqz p3, :cond_0

    .line 2462
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 2464
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2467
    :catch_0
    move-exception v0

    .line 2468
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergencyNumberInternal: RuntimeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 2306
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .line 2428
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .line 2281
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    const/4 v0, 0x0

    return v0

    .line 1142
    :cond_0
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1143
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static whitelist isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 128
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1931
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1932
    return v1

    .line 1936
    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1940
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1942
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1943
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1944
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v2

    .line 1945
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1

    .line 1937
    .end local v0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_3
    :goto_0
    return v1
.end method

.method public static greylist isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2506
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2486
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .line 2622
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .line 2598
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 3168
    const/4 v0, 0x0

    .line 3169
    .local v0, "retVal":Z
    if-eqz p0, :cond_2

    .line 3170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 3171
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 3172
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3173
    const/4 v0, 0x1

    .line 3174
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3175
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3176
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3177
    const/4 v0, 0x0

    .line 3178
    goto :goto_1

    .line 3174
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 3184
    :cond_2
    const-string/jumbo v1, "isNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_3
    :goto_2
    return v0
.end method

.method public static final whitelist isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 152
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1156
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1157
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1158
    const/4 v2, 0x0

    return v2

    .line 1156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 3193
    const/4 v0, 0x0

    .line 3194
    .local v0, "retVal":Z
    if-eqz p0, :cond_1

    .line 3195
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3196
    .local v1, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3197
    const/4 v0, 0x1

    .line 3199
    .end local v1    # "newDialStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 3200
    :cond_1
    const-string/jumbo v1, "isOneNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :goto_0
    return v0
.end method

.method private static greylist-max-o isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 166
    const/16 v0, 0x70

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-r isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2258
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2406
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2226
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2375
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2572
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2540
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 146
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 212
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final whitelist isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 161
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 171
    const/16 v0, 0x77

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 3133
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3134
    const/4 v0, 0x1

    return v0

    .line 3136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3219
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2652
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2674
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2675
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 2678
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2681
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 2682
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 2688
    .local v1, "mdn":Ljava/lang/String;
    nop

    .line 2691
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2692
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2694
    return v0

    .line 2698
    :cond_1
    const/4 v3, 0x0

    .line 2699
    .local v3, "compareWithMdn":Z
    if-eqz p0, :cond_2

    .line 2700
    nop

    .line 2701
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 2702
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v4, :cond_2

    .line 2703
    invoke-virtual {v4, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2704
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_2

    .line 2705
    const-string/jumbo v6, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2712
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_2
    if-eqz v3, :cond_5

    .line 2714
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p2, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    .line 2717
    :cond_5
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2685
    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "vmNumber":Ljava/lang/String;
    .end local v3    # "compareWithMdn":Z
    :catch_0
    move-exception v1

    .line 2687
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static whitelist isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 2636
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .line 1129
    nop

    .line 1130
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1132
    :goto_0
    return v1
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 436
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private static greylist-max-o matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3413
    const/4 v0, 0x0

    .line 3414
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_6

    .line 3415
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3417
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_0

    .line 3436
    :pswitch_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 3431
    :pswitch_1
    if-ne v3, v4, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    .line 3432
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 3425
    :pswitch_2
    if-ne v3, v5, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 3426
    :cond_1
    if-ne v3, v4, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 3427
    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 3419
    :pswitch_3
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 3420
    :cond_3
    if-ne v3, v5, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    .line 3421
    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 3414
    .end local v3    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3442
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    :cond_7
    move v2, v1

    :cond_8
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3452
    const/4 v0, 0x0

    .line 3453
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_8

    .line 3454
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3456
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_0

    .line 3488
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    .line 3483
    :pswitch_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3484
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    .line 3470
    :pswitch_1
    if-ne v3, v4, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    .line 3471
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    .line 3464
    :pswitch_2
    if-ne v3, v5, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 3465
    :cond_2
    if-ne v3, v4, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    .line 3466
    :cond_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    .line 3477
    :pswitch_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x6

    goto :goto_1

    .line 3478
    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    .line 3458
    :pswitch_4
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    .line 3459
    :cond_5
    if-ne v3, v5, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    .line 3460
    :cond_6
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    .line 3453
    .end local v3    # "c":C
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3492
    .end local v1    # "i":I
    :cond_8
    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    :cond_9
    const/4 v2, 0x1

    :cond_a
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3500
    const/4 v0, 0x0

    .line 3502
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 3503
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3505
    .local v2, "c":C
    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 3506
    const/4 v0, 0x1

    goto :goto_1

    .line 3507
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3508
    const/4 v3, 0x0

    return v3

    .line 3502
    .end local v2    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3512
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static greylist-max-o minPositive(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 424
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 425
    if-ge p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0

    .line 426
    :cond_1
    if-ltz p0, :cond_2

    .line 427
    return p0

    .line 428
    :cond_2
    if-ltz p1, :cond_3

    .line 429
    return p1

    .line 431
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1170
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1180
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 2102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    const-string v0, ""

    return-object v0

    .line 2106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2107
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2108
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 2109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2111
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 2112
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_2

    .line 2115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2117
    :cond_2
    const/16 v5, 0x2a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x23

    if-ne v3, v5, :cond_3

    goto :goto_1

    .line 2120
    :cond_3
    const/16 v5, 0x61

    if-lt v3, v5, :cond_4

    const/16 v5, 0x7a

    if-le v3, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v3, v5, :cond_7

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_7

    .line 2121
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2118
    :cond_6
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2108
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2124
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1199
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist numberToCalledPartyBCD(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "bcdExtType"    # I

    .line 1214
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B
    .locals 17
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z
    .param p2, "bcdExtType"    # I

    .line 1224
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1225
    return-object v2

    .line 1227
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1228
    .local v1, "numberLenReal":I
    move v3, v1

    .line 1229
    .local v3, "numberLenEffective":I
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v5, v7, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1230
    .local v5, "hasPlus":Z
    :goto_0
    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 1232
    :cond_2
    if-nez v3, :cond_3

    return-object v2

    .line 1234
    :cond_3
    add-int/lit8 v2, v3, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 1235
    .local v2, "resultLen":I
    const/4 v7, 0x1

    .line 1236
    .local v7, "extraBytes":I
    if-eqz p1, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 1237
    :cond_4
    add-int/2addr v2, v7

    .line 1239
    new-array v9, v2, [B

    .line 1241
    .local v9, "result":[B
    const/4 v10, 0x0

    .line 1242
    .local v10, "digitCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_7

    .line 1243
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1244
    .local v12, "c":C
    if-ne v12, v4, :cond_5

    move/from16 v4, p2

    goto :goto_3

    .line 1245
    :cond_5
    and-int/lit8 v13, v10, 0x1

    if-ne v13, v8, :cond_6

    const/4 v13, 0x4

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    .line 1246
    .local v13, "shift":I
    :goto_2
    shr-int/lit8 v14, v10, 0x1

    add-int/2addr v14, v7

    aget-byte v15, v9, v14

    .line 1247
    move/from16 v4, p2

    invoke-static {v12, v4}, Landroid/telephony/PhoneNumberUtils;->charToBCD(CI)I

    move-result v16

    and-int/lit8 v16, v16, 0xf

    shl-int v6, v16, v13

    int-to-byte v6, v6

    or-int/2addr v6, v15

    int-to-byte v6, v6

    aput-byte v6, v9, v14

    .line 1248
    add-int/lit8 v10, v10, 0x1

    .line 1242
    .end local v12    # "c":C
    .end local v13    # "shift":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x2b

    goto :goto_1

    :cond_7
    move/from16 v4, p2

    .line 1252
    .end local v11    # "i":I
    and-int/lit8 v6, v10, 0x1

    if-ne v6, v8, :cond_8

    shr-int/lit8 v6, v10, 0x1

    add-int/2addr v6, v7

    aget-byte v8, v9, v6

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v9, v6

    .line 1254
    :cond_8
    const/4 v6, 0x0

    .line 1255
    .local v6, "offset":I
    if-eqz p1, :cond_9

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v11, v2, -0x1

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    move v6, v8

    .line 1256
    .end local v8    # "offset":I
    .restart local v6    # "offset":I
    :cond_9
    if-eqz v5, :cond_a

    const/16 v8, 0x91

    goto :goto_4

    :cond_a
    const/16 v8, 0x81

    :goto_4
    int-to-byte v8, v8

    aput-byte v8, v9, v6

    .line 1258
    return-object v9
.end method

.method private static greylist-max-o processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .line 3297
    move-object v0, p0

    .line 3303
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 3304
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 3305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 3306
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3308
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3310
    move-object v0, v1

    .line 3312
    const-string/jumbo v2, "processPlusCode - Remove the leading plus sign"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3316
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[+]"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processPlusCode - Replaces the plus sign with the default IDP. useNanp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current IDP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3323
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static blacklist processPlusCodeForSpr(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 3328
    move-object v0, p0

    .line 3332
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 3333
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 3334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 3335
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3337
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3338
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "toggle_country_name"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3340
    .local v4, "isUSDialingValue":Z
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 3341
    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v5

    .line 3342
    .local v5, "iso":Ljava/lang/String;
    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    .line 3343
    .local v6, "simIso":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCodeForSpr - ISO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SIM ISO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    .line 3346
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_0

    .line 3347
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_0

    .line 3349
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3350
    const-string/jumbo v2, "processPlusCodeForSpr - Remove the leading plus sign and 1"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3352
    .end local v5    # "iso":Ljava/lang/String;
    .end local v6    # "simIso":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 3353
    :cond_1
    const-string v2, "country_code"

    const-string v5, "011"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3355
    .local v2, "nanpIDPString":Ljava/lang/String;
    const-string v5, "[+]"

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPlusCodeForSpr - Replaces the plus sign with the NANP IDP (NANP IDP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3359
    .end local v1    # "newStr":Ljava/lang/String;
    .end local v2    # "nanpIDPString":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "isUSDialingValue":Z
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static greylist-max-o removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .line 1861
    const/4 v0, 0x0

    .line 1862
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1863
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1864
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1866
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1869
    :cond_1
    return-void
.end method

.method public static whitelist replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2135
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 2136
    .local v4, "c":C
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 2137
    .local v5, "digit":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 2138
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2140
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2135
    .end local v4    # "c":C
    .end local v5    # "digit":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2143
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist retrieveAssistedParams(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 16
    .param p0, "subId"    # I
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 4204
    move/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "NANP"

    const-string v4, "310 to 316"

    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 4205
    .local v5, "phoneId":I
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "LRA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 4206
    const-string v0, "Assisted Dial not supported"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4207
    return v6

    .line 4209
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 4210
    const-string/jumbo v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    sput-boolean v7, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 4212
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v7

    .line 4214
    .local v7, "phoneType":I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v8, 0x3

    if-ge v0, v8, :cond_1

    move-object/from16 v11, p2

    goto/16 :goto_a

    .line 4220
    :cond_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 4221
    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v10, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4222
    if-nez v0, :cond_3

    .line 4223
    const-string v0, "Invalid Reference Country"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4224
    nop

    .line 4266
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 4267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4224
    :cond_2
    return v6

    .line 4227
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4230
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 4231
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 4232
    .local v12, "refmcc":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, "430"

    const-string v14, "310"

    const-string v15, "430 to 431"

    if-eqz v0, :cond_4

    move-object v0, v14

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v13

    goto :goto_0

    :cond_5
    move-object v0, v12

    :goto_0
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 4233
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 4234
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 4235
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v10

    goto :goto_1

    :cond_6
    move v0, v6

    :goto_1
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 4236
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 4238
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 4239
    if-nez v0, :cond_8

    .line 4240
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lt v0, v8, :cond_7

    .line 4241
    move-object/from16 v11, p2

    :try_start_3
    invoke-virtual {v11, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto :goto_2

    .line 4243
    :cond_7
    move-object/from16 v11, p2

    const-string v0, "Wrong MDN. Use default reference country area code"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4244
    const-string v0, "123"

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto :goto_2

    .line 4239
    :cond_8
    move-object/from16 v11, p2

    .line 4248
    :goto_2
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4249
    .local v6, "assistedDialingNnl":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_9

    .line 4250
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    goto :goto_3

    .line 4252
    :cond_9
    const/16 v0, 0xa

    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    .line 4254
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refCountryNationalNumberLength - MDN length: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", DB: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4256
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_a

    .line 4258
    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4261
    goto :goto_4

    .line 4259
    :catch_0
    move-exception v0

    .line 4260
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v8, "Can\'t parse the NationalNumberLength as integer"

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4264
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_a
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refCountryMCC: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4266
    .end local v6    # "assistedDialingNnl":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "refmcc":Ljava/lang/String;
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 4267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4270
    :cond_b
    if-ne v7, v10, :cond_c

    move v0, v10

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 4271
    const/4 v6, 0x2

    if-ne v7, v6, :cond_d

    move v0, v10

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4273
    :try_start_6
    invoke-static {v1, v2, v10}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(ILandroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4275
    const/4 v6, 0x0

    sput-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 4276
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4277
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 4278
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 4280
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4281
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 4282
    if-nez v0, :cond_e

    .line 4283
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 4286
    :cond_e
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v10

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 4287
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 4288
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v13, v14

    goto :goto_8

    :cond_10
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    :goto_8
    sput-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4291
    :cond_12
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    .line 4292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4296
    :cond_13
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 4297
    const-string v0, "OTA country not found"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4298
    const/4 v3, 0x0

    return v3

    .line 4301
    :cond_14
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->displayAssistedParams()V

    .line 4303
    return v10

    .line 4291
    :catchall_0
    move-exception v0

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_15

    .line 4292
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4294
    :cond_15
    throw v0

    .line 4266
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v11, p2

    :goto_9
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_16

    .line 4267
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4269
    :cond_16
    throw v0

    .line 4214
    :cond_17
    move-object/from16 v11, p2

    .line 4215
    :goto_a
    const-string v0, "Wrong MDN"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 4216
    const/4 v3, 0x0

    return v3
.end method

.method public static whitelist semCompareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .line 794
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist semIsEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2197
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist setMinMatchForTest(I)V
    .locals 0
    .param p0, "minMatch"    # I

    .line 207
    sput p0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 208
    return-void
.end method

.method private static greylist-max-o splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 3109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, " "

    if-ge v1, v2, :cond_1

    .line 3111
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3112
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    .line 3113
    :cond_0
    nop

    .line 3111
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3118
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 3964
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 3965
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3966
    :cond_0
    const-string/jumbo v0, "length 12 - 7,20,65,90 is detected"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3967
    return v1

    .line 3971
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_5

    .line 3972
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3973
    const-string v0, "US country code is detected with more than 11 digits"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3974
    return v1

    .line 3977
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3978
    .local v0, "ContryCode":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    sput-object v2, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    .line 3979
    if-eqz v2, :cond_5

    .line 3980
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3981
    :goto_0
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3982
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3983
    const-string v1, "contry code is detected"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3984
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3985
    const/4 v1, 0x1

    return v1

    .line 3987
    :cond_3
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 3989
    :cond_4
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3993
    .end local v0    # "ContryCode":Landroid/content/ContentResolver;
    :cond_5
    return v1
.end method

.method public static whitelist stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .line 859
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 861
    :cond_0
    const/16 v0, 0x91

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 865
    :cond_1
    return-object p0
.end method

.method public static whitelist stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 360
    if-nez p0, :cond_0

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 364
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 367
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 369
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 370
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 371
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 372
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 809
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "np":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 875
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 876
    const/16 v0, 0x91

    return v0

    .line 879
    :cond_0
    const/16 v0, 0x81

    return v0
.end method

.method private static greylist-max-o tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .line 3579
    const/4 v0, 0x0

    .line 3580
    .local v0, "state":I
    const/4 v1, 0x0

    .line 3581
    .local v1, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3582
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_10

    .line 3583
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3584
    .local v5, "ch":C
    const/16 v6, 0x36

    const/16 v7, 0x30

    const/16 v8, 0x31

    packed-switch v0, :pswitch_data_0

    .line 3649
    return-object v4

    .line 3643
    :pswitch_0
    if-ne v5, v6, :cond_0

    .line 3644
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v6, 0x42

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v6, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3646
    :cond_0
    return-object v4

    .line 3637
    :pswitch_1
    if-ne v5, v6, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_4

    .line 3638
    :cond_1
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3639
    return-object v4

    .line 3608
    :pswitch_2
    if-ne v5, v8, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_4

    .line 3609
    :cond_2
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3610
    return-object v4

    .line 3600
    :pswitch_3
    if-ne v5, v7, :cond_3

    const/4 v0, 0x3

    goto :goto_4

    .line 3601
    :cond_3
    if-ne v5, v8, :cond_4

    const/4 v0, 0x4

    goto :goto_4

    .line 3602
    :cond_4
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3603
    return-object v4

    .line 3620
    :pswitch_4
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v6

    .line 3621
    .local v6, "ret":I
    if-lez v6, :cond_9

    .line 3622
    mul-int/lit8 v4, v1, 0xa

    add-int v1, v4, v6

    .line 3623
    const/16 v4, 0x64

    if-ge v1, v4, :cond_8

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 3626
    :cond_5
    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    goto :goto_1

    .line 3629
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3627
    :cond_7
    :goto_1
    const/4 v0, 0x6

    goto :goto_3

    .line 3624
    :cond_8
    :goto_2
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v1, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3631
    :cond_9
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3632
    return-object v4

    .line 3635
    .end local v6    # "ret":I
    :cond_a
    :goto_3
    goto :goto_4

    .line 3586
    :pswitch_5
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    .line 3587
    :cond_b
    if-ne v5, v7, :cond_c

    const/4 v0, 0x2

    goto :goto_4

    .line 3588
    :cond_c
    if-ne v5, v8, :cond_e

    .line 3589
    if-eqz p1, :cond_d

    .line 3590
    const/16 v0, 0x8

    goto :goto_4

    .line 3592
    :cond_d
    return-object v4

    .line 3594
    :cond_e
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3595
    return-object v4

    .line 3582
    .end local v5    # "ch":C
    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3653
    .end local v3    # "i":I
    :cond_10
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .line 3550
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3551
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 3553
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .line 3666
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3667
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_2

    .line 3668
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3669
    .local v3, "ch":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_0

    .line 3670
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 3671
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3672
    return v2

    .line 3667
    .end local v3    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3675
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static greylist ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3049
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 0
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3066
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 3067
    return-void
.end method
