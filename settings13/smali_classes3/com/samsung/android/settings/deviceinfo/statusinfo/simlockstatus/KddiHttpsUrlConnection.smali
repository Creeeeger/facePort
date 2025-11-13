.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KddiHttpsUrlConnection"


# instance fields
.field private mIsSucceed:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return-void
.end method

.method private static getAuthorizationValue()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.sys.kddi_sim_lock"

    .line 112
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "aagq3b1NBs:"

    goto :goto_0

    :cond_0
    const-string v0, "aHgq8b2NBs:"

    .line 117
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgentValue()Ljava/lang/String;
    .locals 1

    const-string v0, "KD-14/0001"

    return-object v0
.end method

.method private static processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 125
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v1, "process return body part()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.sys.kddi_sim_lock"

    .line 126
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "no response body part available property is 3"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entire message length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server status code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server text length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-array v3, v2, [B

    .line 149
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server text : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, v2

    .line 152
    new-array v2, v1, [B

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new sim lock policy file length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->copyRemainingByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "no response body part available"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 160
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v1, "read input stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 164
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 173
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byte buffer read : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 175
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 178
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :goto_1
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 179
    throw p0
.end method


# virtual methods
.method public isSucceed()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return p0
.end method

.method public post(Landroid/content/Context;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 43
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 49
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://slcs.device.kddi.ne.jp/SIM/servlet/SimServlet"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x2710

    .line 51
    :try_start_1
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 52
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    .line 54
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 55
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v3, "Authorization"

    .line 58
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->getAuthorizationValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->getUserAgentValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    .line 64
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "write request body"

    .line 66
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->build(Landroid/content/Context;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 70
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 72
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    .line 73
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    const-string p1, "check input stream"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 82
    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simlock policy buffer capacity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is succeed to get simlock policy buffer : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "check error stream"

    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_0
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 100
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_1
    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    .line 96
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 100
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, p1

    :goto_4
    return-object v1

    :catchall_3
    move-exception p0

    :goto_5
    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 100
    :cond_3
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    throw p0
.end method
