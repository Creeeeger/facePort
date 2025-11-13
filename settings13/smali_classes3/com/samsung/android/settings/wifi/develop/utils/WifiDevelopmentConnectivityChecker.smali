.class public Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;
.super Ljava/lang/Object;
.source "WifiDevelopmentConnectivityChecker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# instance fields
.field private mCleartextDnsNetwork:Landroid/net/Network;

.field private final mContext:Landroid/content/Context;

.field mLatestProbeRequest:Ljava/lang/StringBuilder;

.field private final mNetwork:Landroid/net/Network;

.field private mTestHttpUrl:Ljava/net/URL;

.field private mTestHttpsUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Network;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mNetwork:Landroid/net/Network;

    .line 84
    invoke-virtual {p2}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->setValidationUrl()V

    return-void
.end method

.method private static extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2

    if-nez p0, :cond_0

    .line 447
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "; *charset=\"?([^ ;\"]+)\"?"

    .line 449
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 451
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 452
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    const/4 v0, 0x1

    .line 455
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 457
    :catch_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private logValidationProbe(JII)Ljava/lang/String;
    .locals 1

    .line 494
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;-><init>()V

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->setProbeType(IZ)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;

    move-result-object p0

    .line 496
    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->setReturnCode(I)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;

    move-result-object p0

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->setDurationMs(J)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;

    move-result-object p0

    .line 498
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->build()Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;

    move-result-object p0

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeDefaultHttpUrl()Ljava/net/URL;
    .locals 1

    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    .line 89
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private makeDefaultHttpsUrl()Ljava/net/URL;
    .locals 1

    const-string v0, "https://www.google.com/generate_204"

    .line 93
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private makeProbeConnection(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 391
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 p1, 0x2710

    .line 392
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 393
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p1, "Connection"

    const-string p2, "close"

    .line 394
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 395
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p1, "User-Agent"

    const-string p2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    .line 396
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 101
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad URL: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDevelopmentConnectivityCheck"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 p0, 0x3e8

    new-array p2, p0, [C

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    sub-int v4, p1, v3

    .line 431
    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 432
    invoke-virtual {v0, p2, v2, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    .line 436
    invoke-virtual {v1, p2, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 438
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendDnsProbe(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;
    .locals 1

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendDnsProbe : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiDevelopmentConnectivityCheck"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 263
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->start()Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    move-result-object p0

    .line 268
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 269
    invoke-virtual {p2, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->stop()J

    return-object v0
.end method

.method private sendHttpProbe(Ljava/net/URL;ILcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "false"

    const-string v4, "WifiDevelopmentConnectivityCheck"

    .line 285
    new-instance v5, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    invoke-direct {v5}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->start()Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    move-result-object v5

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v10, p1

    .line 290
    :try_start_0
    invoke-direct {v1, v10, v6}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeProbeConnection(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 297
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v15, "location"

    .line 298
    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v15, v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms ret="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " request="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " headers="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xc8

    if-ne v14, v7, :cond_6

    .line 314
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v11

    .line 315
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-wide/16 v15, -0x1

    cmp-long v13, v11, v15

    if-nez v13, :cond_1

    .line 317
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_5

    const-string v0, "Empty 200 response interpreted as failed response."

    .line 318
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v14, 0x257

    goto :goto_3

    .line 322
    :cond_1
    invoke-virtual {v1, v11, v12}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->matchesHttpContentLength(J)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 323
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    long-to-int v15, v11

    .line 325
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 324
    invoke-static {v13, v15, v7}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 326
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 327
    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->matchesHttpContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v0, 0xc8

    const/16 v14, 0x257

    goto :goto_2

    .line 330
    :cond_2
    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->matchesHttpContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xcc

    move v14, v0

    :cond_3
    const/16 v0, 0xc8

    :goto_2
    if-eq v14, v0, :cond_5

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "200 response with Content-length ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", content matches custom regexp, interpreted as "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " response."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-wide/16 v15, 0x4

    cmp-long v0, v11, v15

    if-gtz v0, :cond_5

    const-string v0, "200 response with Content-length <= 4 interpreted as failed response."

    .line 345
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :cond_5
    :goto_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :cond_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catch_0
    move-exception v0

    move v9, v14

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v8, v6

    goto :goto_8

    :catch_1
    move-exception v0

    const/16 v9, 0x257

    :goto_4
    move-object/from16 v17, v6

    move-object v6, v0

    move-object v0, v8

    move-object/from16 v8, v17

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v8

    const/16 v9, 0x257

    .line 352
    :goto_5
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Probe failed with exception "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_7

    .line 358
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v8, v0

    move v14, v9

    .line 361
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v1, v4, v5, v2, v14}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->logValidationProbe(JII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_9

    .line 365
    invoke-static {v14}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->isPortalCode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 366
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    .line 373
    :cond_8
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 374
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-direct {v0, v14, v8, v1, v2}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    .line 376
    :cond_9
    invoke-virtual {v3, v14, v8}, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;->getResult(ILjava/lang/String;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    move-result-object v0

    :goto_7
    return-object v0

    :goto_8
    if-eqz v8, :cond_a

    .line 358
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 360
    :cond_a
    throw v0
.end method


# virtual methods
.method public getDnsTestStep(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, " DNS_FAILURE \n"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS Test : \n"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v2

    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eq v2, v7, :cond_0

    .line 139
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->start()Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    move-result-object v0

    .line 141
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runDnsTest(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v5, v6

    .line 147
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->stop()J

    move-result-wide v7

    .line 148
    invoke-direct {p0, v7, v8, v6, v5}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->logValidationProbe(JII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    .line 150
    array-length p0, v4

    :goto_1
    if-ge v6, p0, :cond_7

    aget-object p1, v4, v6

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const-string v2, "DNS Test - bypass private DNS\n"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->start()Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    move-result-object v2

    .line 158
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runDnsTest(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 159
    array-length v8, v7

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v5

    goto :goto_4

    .line 160
    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object v7, v4

    :goto_3
    move v8, v6

    .line 169
    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->stop()J

    move-result-wide v9

    .line 170
    invoke-direct {p0, v9, v10, v6, v8}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->logValidationProbe(JII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_4

    .line 172
    array-length v2, v7

    move v8, v6

    :goto_5
    if-ge v8, v2, :cond_3

    aget-object v9, v7, v8

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    const-string v2, "\n"

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DNS Test - private DNS( "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {v7}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " )\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->start()Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;

    move-result-object v2

    .line 181
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runDnsTextWithPrivateDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 182
    array-length v7, p1

    if-nez v7, :cond_6

    .line 183
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v6

    :cond_6
    move-object v4, p1

    goto :goto_6

    :catch_2
    move v5, v6

    .line 192
    :goto_6
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/utils/Stopwatch;->stop()J

    move-result-wide v7

    .line 193
    invoke-direct {p0, v7, v8, v6, v5}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->logValidationProbe(JII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    .line 195
    array-length p0, v4

    :goto_7
    if-ge v6, p0, :cond_7

    aget-object p1, v4, v6

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 200
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpTestStep(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    const-string v1, "HTTP request bypass private DNS\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP request private DNS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {v2}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 218
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpsTestStep(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpsTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    const-string v1, "HTTPS request bypass private DNS\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpsTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPS request private DNS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mContext:Landroid/content/Context;

    .line 230
    invoke-static {v2}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpsTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    .line 233
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method matchesHttpContent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 402
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pattern syntax exception occurs when matching the resource="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDevelopmentConnectivityCheck"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method matchesHttpContentLength(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matchesHttpContentLength : Get invalid contentLength = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiDevelopmentConnectivityCheck"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-lez p0, :cond_2

    if-gez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public runDnsTest(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mTestHttpUrl:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->sendDnsProbe(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->sendDnsProbe(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public runDnsTextWithPrivateDns(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mTestHttpUrl:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mNetwork:Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->sendDnsProbe(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mNetwork:Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->sendDnsProbe(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public runHttpTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
    .locals 2

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mTestHttpUrl:Ljava/net/URL;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->sendHttpProbe(Ljava/net/URL;ILcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    move-result-object p0

    return-object p0
.end method

.method public runHttpsTest(Ljava/lang/String;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
    .locals 2

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mTestHttpsUrl:Ljava/net/URL;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->sendHttpProbe(Ljava/net/URL;ILcom/samsung/android/settings/wifi/develop/utils/TestProbeSpec;Landroid/net/Network;)Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;

    move-result-object p0

    return-object p0
.end method

.method public setValidationUrl()V
    .locals 1

    const-string v0, ""

    .line 121
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->setValidationUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValidationUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeDefaultHttpUrl()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mTestHttpUrl:Ljava/net/URL;

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeDefaultHttpsUrl()Ljava/net/URL;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mTestHttpsUrl:Ljava/net/URL;

    return-void
.end method
