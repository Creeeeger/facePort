.class public Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;
.super Ljava/lang/Object;
.source "RegisterTask.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterTask"


# instance fields
.field private final api:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field private callback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

.field private conn:Ljavax/net/ssl/HttpsURLConnection;

.field private deviceID:Ljava/lang/String;

.field private timestamp:J

.field private trid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->api:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->timestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->api:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->timestamp:J

    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    return-void
.end method

.method private callback(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc8

    const-string v1, ""

    if-ne p1, v0, :cond_1

    const-string v0, "1000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->onSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;->onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private cleanUp(Ljava/io/BufferedReader;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private makeRequestBody()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tid"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->trid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lid"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    iget-wide v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onFinish()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "rc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0xc8

    const-string v6, " "

    if-ne v2, v5, :cond_1

    :try_start_1
    const-string v5, "1000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_2
    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->callback(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->cleanUp(Ljava/io/BufferedReader;)V

    nop

    return v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->cleanUp(Ljava/io/BufferedReader;)V

    throw v2
.end method

.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->api:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "hc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->SALT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->api:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->makeRequestBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;->conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
