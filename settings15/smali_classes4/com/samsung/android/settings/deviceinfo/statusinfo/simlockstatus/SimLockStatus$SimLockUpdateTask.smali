.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mKddiConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, [Ljava/lang/Integer;

    const-string p1, "SimLockStatus"

    const-string v0, "do in background"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "is succeed to get simlock policy buffer : "

    const-string/jumbo v4, "simlock policy buffer capacity : "

    const-string/jumbo v5, "response code : "

    const-string v6, "KddiHttpsUrlConnection"

    const-string v7, "connect()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v9, "https://slcs.device.kddi.ne.jp/SIM/servlet/SimServlet"

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v9, 0x2710

    :try_start_1
    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v8, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v8, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v0, "Authorization"

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->getAuthorizationValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v9, "KD-14/0001"

    invoke-virtual {v8, v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v9, "application/octet-stream"

    invoke-virtual {v8, v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "write request body"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->build(Landroid/content/Context;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", message : "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_1

    const-string v2, "check input stream"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    iput-boolean v4, p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    :goto_0
    move-object v7, v8

    goto :goto_7

    :catch_0
    move-exception p1

    move-object v2, v7

    :goto_1
    move-object v7, v8

    goto :goto_4

    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    const-string p1, "check error stream"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v7

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v0, v7

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v0, v7

    move-object v2, v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :goto_5
    move-object v7, v2

    :catch_4
    :goto_6
    iput-object v7, v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->mKddiConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;

    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :goto_8
    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return-void
.end method
