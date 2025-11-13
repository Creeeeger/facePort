.class public Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;
.super Ljava/lang/Object;
.source "SemEntityPatterns.java"


# static fields
.field public static blacklist COUNTRY_DATE_STRING:Ljava/lang/String; = null

.field public static blacklist COUNTRY_TIME_STRING:Ljava/lang/String; = null

.field public static final blacklist DEFAULT_DATE_STRING_TYPE1:Ljava/lang/String; = "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

.field public static final blacklist DEFAULT_DATE_STRING_TYPE2:Ljava/lang/String; = "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

.field public static final blacklist DEFAULT_TIME_STRING:Ljava/lang/String; = "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

.field private static final blacklist DOMAIN_NAME:Ljava/util/regex/Pattern;

.field public static final blacklist EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field public static final blacklist EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

.field private static final blacklist GOOD_GTLD_CHAR:Ljava/lang/String; = "a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff"

.field private static final blacklist GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

.field private static final blacklist GOOD_IRI_HOST_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff"

.field private static final blacklist GTLD:Ljava/lang/String; = "[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}"

.field private static final blacklist HOST_NAME:Ljava/lang/String; = "([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}\\.)+[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}"

.field public static final blacklist HYPHEN:Ljava/util/regex/Pattern;

.field private static final blacklist IP_ADDRESS:Ljava/util/regex/Pattern;

.field private static final blacklist IRI:Ljava/lang/String; = "[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}"

.field public static final blacklist PHONE_NUMBER:Ljava/util/regex/Pattern;

.field public static final blacklist PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

.field public static final blacklist PREFIX_FOR_DATE_MILLIS:Ljava/lang/String; = "((Date|date|\ub0a0\uc9dc)[[[:space:]]\\:\\;\\-]+)"

.field public static final blacklist PREFIX_FOR_TIME_MILLIS:Ljava/lang/String; = "((Time|time|\uc2dc\uac04)[[[:space:]]\\:\\;\\-]+)"

.field public static final blacklist REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

.field public static final blacklist SPILT_PATTERN_DATE_TYPE1:Ljava/lang/String; = "[[[:space:]]\\-\\/\\.\ub144\uc6d4\uc77c]+"

.field public static final blacklist SPILT_PATTERN_DATE_TYPE2:Ljava/lang/String; = "[[[:space:]]\\,\\.]+"

.field public static final blacklist URL:Ljava/util/regex/Pattern;

.field public static blacklist globalDateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_DATE_STRING:Ljava/lang/String;

    .line 73
    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_TIME_STRING:Ljava/lang/String;

    .line 91
    const-string v0, "([[:space:]](\\+[0-9]+[\\- \\.\u00ad]*)?(\\([0-9]+\\)[\\- \\.\u00ad]*)?([0-9][0-9\\- \\.\u00ad][0-9\\- \\.\u00ad]+[0-9])[[:space:]])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 98
    const-string v0, "((\\+[0-9]+[[[:space:]]?\\-\\.\u00ad]*)?(\\([0-9]+\\)[[[:space:]]?\\-\\.\u00ad]*)?([0-9][0-9[[:space:]]?\\-\\.\u00ad][0-9[[:space:]]?\\-\\.\u00ad]+[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "(\u00ad)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, "([a-zA-Z0-9\\+\\.\\_\\%\\-\\+\u00ad]{1,256}[[:space:]]?\\@[[:space:]]?[a-zA-Z0-9][a-zA-Z0-9\\-\u00ad]{0,64}([[:space:]]?\\.[[:space:]]?[a-zA-Z0-9][a-zA-Z0-9\\-\u00ad]{0,25})+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    .line 165
    nop

    .line 166
    const-string v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}\\.)+[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((?:(http|https|Http|Https|rtsp|Rtsp|ftp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")(?:\\:\\d{1,5})?)(\\/(?:(?:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->URL:Ljava/util/regex/Pattern;

    .line 232
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    .line 235
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Jan"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v3, "January"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v1, "Feb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v1, "February"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Mar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "March"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Apr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "April"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "May"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Jun"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "June"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Jul"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "July"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Aug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "August"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sep"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "September"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Octo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "October"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Nov"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "November"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dec"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->globalDateMap:Ljava/util/Map;

    const-string v2, "December"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCountryDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getSmartPatternsForDate(Landroid/content/Context;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_DATE_STRING:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))|(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_DATE_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmartPatternsForTime(Landroid/content/Context;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_TIME_STRING:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/infoextraction/regex/SemEntityPatterns;->COUNTRY_TIME_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
