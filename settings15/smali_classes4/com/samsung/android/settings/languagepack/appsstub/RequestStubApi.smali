.class public final Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requestURL(Ljava/lang/String;Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;)Ljava/lang/String;
    .locals 9

    const-string v0, "[requestURL] conn disconnected"

    const-string v1, "[requestURL] response code = "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[requestURL] start to request url to server!, saInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->hasInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RequestStubApi"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_4

    const/16 v4, 0x3a98

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x2710

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "GET"

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->hasInfo()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->printLog()V

    const-string/jumbo v4, "x-vas-auth-appId"

    iget-object v5, p1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->appId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "x-vas-auth-token"

    iget-object v5, p1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->token:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "x-vas-auth-url"

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v5, 0x1000

    :try_start_5
    new-array v5, v5, [C

    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/BufferedReader;->read([C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    goto :goto_2

    :cond_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_3

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_6

    :catchall_3
    move-exception v4

    goto :goto_4

    :goto_2
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v4

    :try_start_a
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_4
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_6
    if-eqz p1, :cond_2

    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p1

    :try_start_e
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_7
    throw v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_8
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[requestURL] exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_3
    :goto_9
    :try_start_10
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v3, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_1
    move-exception p0

    goto :goto_b

    :goto_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v3, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "[requestURL] conn is null!"

    invoke-static {v3, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDownloadInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/DownloadInfo;
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVersionCode() Exception :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LanguagePackUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "-1"

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->getSHA1DigestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;-><init>(Landroid/content/Context;I)V

    iput-object p1, v4, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->appID:Ljava/lang/String;

    iput-object v0, v4, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->saInfo:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    iput-object v1, v4, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->versionCode:Ljava/lang/String;

    iput-object v3, v4, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->hashValue:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->build()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->requestURL(Ljava/lang/String;Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getDownloadInfo] xml = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestStubApi"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "XmlParser"

    const-string p1, "Input XML is wrong!"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->APPID_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->RETCODE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->RETMSG_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->DOWNLOADURI_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->CONTENTSIZE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->DELTA_DOWNLOADURI_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->DELTA_CONTENTSIZE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->INSTALLED_BINARY_HASH_VALUE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->UPDATE_BINARY_HASH_VALUE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->VERCODE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->VERNAME_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->PRODUCTID_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->PRODUCTNAME_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->SIGNATURE_TAG:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/XmlParser;->getParsedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public final getDownloadInfoByXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;-><init>(Landroid/content/Context;I)V

    iput-object p1, v1, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->appID:Ljava/lang/String;

    iput-object v0, v1, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->saInfo:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/languagepack/appsstub/RequestUrlBuilder;->build()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/languagepack/appsstub/RequestStubApi;->requestURL(Ljava/lang/String;Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getDownloadInfoByXML] xml = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestStubApi"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
