.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestBodyPart"
.end annotation


# direct methods
.method public static build(Landroid/content/Context;)[B
    .locals 7

    .line 191
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepare HTTP Request body part"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->readKddiDummyData(Landroid/content/Context;)[B

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dummy data length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    array-length v1, v0

    add-int/lit8 v1, v1, 0x16

    int-to-short v1, v1

    .line 199
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected message length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "message type : 16"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x10

    .line 206
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->toBytes(S)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x22

    const-string v3, "2"

    const-string v4, "persist.sys.kddi_sim_lock"

    .line 212
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v1, v4

    .line 215
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type of request : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 218
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->getImei(Landroid/content/Context;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 221
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pki key id : 0"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->toBytes(S)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 228
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/KddiHttpsUrlConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body part written : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static readKddiDummyData(Landroid/content/Context;)[B
    .locals 2

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$raw;->sec_device_info_sim_lock_status_dummy_data_for_oem_v2:I

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 243
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 246
    throw v0
.end method
