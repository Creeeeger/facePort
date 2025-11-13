.class public abstract Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APPID_TAG:[Ljava/lang/String;

.field public static final CONTENTSIZE_TAG:[Ljava/lang/String;

.field public static final DELTA_CONTENTSIZE_TAG:[Ljava/lang/String;

.field public static final DELTA_DOWNLOADURI_TAG:[Ljava/lang/String;

.field public static final DOWNLOADURI_TAG:[Ljava/lang/String;

.field public static final INSTALLED_BINARY_HASH_VALUE_TAG:[Ljava/lang/String;

.field public static final PRODUCTID_TAG:[Ljava/lang/String;

.field public static final PRODUCTNAME_TAG:[Ljava/lang/String;

.field public static final RETCODE_TAG:[Ljava/lang/String;

.field public static final RETMSG_TAG:[Ljava/lang/String;

.field public static final SIGNATURE_TAG:[Ljava/lang/String;

.field public static final UPDATE_BINARY_HASH_VALUE_TAG:[Ljava/lang/String;

.field public static final VERCODE_TAG:[Ljava/lang/String;

.field public static final VERNAME_TAG:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "<appId>"

    const-string v1, "</appId>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->APPID_TAG:[Ljava/lang/String;

    const-string v0, "<resultCode>"

    const-string v1, "</resultCode>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->RETCODE_TAG:[Ljava/lang/String;

    const-string v0, "<resultMsg>"

    const-string v1, "</resultMsg>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->RETMSG_TAG:[Ljava/lang/String;

    const-string v0, "<versionCode>"

    const-string v1, "</versionCode>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->VERCODE_TAG:[Ljava/lang/String;

    const-string v0, "<versionName>"

    const-string v1, "</versionName>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->VERNAME_TAG:[Ljava/lang/String;

    const-string v0, "<downloadURI><![CDATA["

    const-string v1, "]]></downloadURI>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->DOWNLOADURI_TAG:[Ljava/lang/String;

    const-string v0, "<contentSize>"

    const-string v1, "</contentSize>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->CONTENTSIZE_TAG:[Ljava/lang/String;

    const-string v0, "<deltaDownloadURI><![CDATA["

    const-string v1, "]]></deltaDownloadURI>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->DELTA_DOWNLOADURI_TAG:[Ljava/lang/String;

    const-string v0, "<deltaContentSize>"

    const-string v1, "</deltaContentSize>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->DELTA_CONTENTSIZE_TAG:[Ljava/lang/String;

    const-string v0, "<installedBinaryHashValue>"

    const-string v1, "</installedBinaryHashValue>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->INSTALLED_BINARY_HASH_VALUE_TAG:[Ljava/lang/String;

    const-string v0, "<updateBinaryHashValue>"

    const-string v1, "</updateBinaryHashValue>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->UPDATE_BINARY_HASH_VALUE_TAG:[Ljava/lang/String;

    const-string v0, "<productId>"

    const-string v1, "</productId>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->PRODUCTID_TAG:[Ljava/lang/String;

    const-string v0, "<productName><![CDATA["

    const-string v1, "]]></productName>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->PRODUCTNAME_TAG:[Ljava/lang/String;

    const-string v0, "<signature>"

    const-string v1, "</signature>"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->SIGNATURE_TAG:[Ljava/lang/String;

    return-void
.end method

.method public static getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
