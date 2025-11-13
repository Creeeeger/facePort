.class public final Lcom/android/settings/development/DSULoader$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/development/DSULoader;

.field public final val$dsu:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/DSULoader;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/development/DSULoader$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iput-object p2, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Ljava/net/URL;)V
    .locals 12

    invoke-static {p1}, Lcom/android/settings/development/DSULoader;->-$$Nest$smreadAll(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "include"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/development/DSULoader$1;->fetch(Ljava/net/URL;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "images"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_13

    new-instance v3, Lcom/android/settings/development/DSULoader$DSUPackage;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mDetails:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    const/4 v6, -0x1

    iput v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    iput-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    const-string v6, ""

    iput-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mPubKey:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    iput-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mTosUrl:Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DSUPackage: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DSULOADER"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    const-string v6, "details"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mDetails:Ljava/lang/String;

    const-string v6, "cpu_abi"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    new-instance v6, Ljava/net/URL;

    const-string v8, "uri"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mUri:Ljava/net/URL;

    const-string v6, "os_version"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_2

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/settings/development/DSULoader$DSUPackage;->dessertNumber(ILjava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    :cond_2
    const-string v6, "vndk"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [I

    iput-object v8, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    move v8, v2

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    iget-object v10, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const-string v6, "pubkey"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mPubKey:Ljava/lang/String;

    :cond_4
    const-string v6, "tos"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/net/URL;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v8, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mTosUrl:Ljava/net/URL;

    :cond_5
    const-string v6, "spl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "yyyy-MM-dd"

    if-eqz v8, :cond_6

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    :cond_6
    const-string v4, "ro.product.cpu.abi"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "aarch64"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v4, "arm64-v8a"

    :cond_7
    iget-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " != "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    :goto_4
    iget v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    if-lez v6, :cond_a

    const-string v8, "ro.system.build.version.release"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/settings/development/DSULoader$DSUPackage;->dessertNumber(ILjava/lang/String;)I

    move-result v8

    if-gez v8, :cond_9

    const-string v4, "Failed to getDeviceOs"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v4, v2

    goto :goto_6

    :cond_9
    if-ge v6, v8, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " < "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    :goto_6
    iget-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    if-eqz v6, :cond_e

    const-string v8, "ro.vndk.version"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1c

    invoke-static {v9, v8}, Lcom/android/settings/development/DSULoader$DSUPackage;->dessertNumber(ILjava/lang/String;)I

    move-result v8

    if-gez v8, :cond_b

    const-string v4, "Failed to getDeviceVndk"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v4, v2

    goto :goto_9

    :cond_b
    move v9, v2

    :goto_8
    array-length v11, v6

    if-ge v9, v11, :cond_d

    aget v11, v6, v9

    if-ne v11, v8, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "vndk:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    :goto_9
    iget-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    if-eqz v6, :cond_11

    const-string v6, "ro.build.version.security_patch"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_a

    :cond_f
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_a
    if-nez v5, :cond_10

    const-string v4, "Failed to getDeviceSPL"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move v4, v2

    goto :goto_c

    :cond_10
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Device SPL:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_11
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isSupported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v4, v4, Lcom/android/settings/development/DSULoader;->mDSUList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_13
    return-void
.end method

.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/development/DSULoader$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DSULOADER"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Ljava/lang/Object;

    check-cast v2, Ljava/net/URL;

    invoke-virtual {p0, v2}, Lcom/android/settings/development/DSULoader$1;->fetch(Ljava/net/URL;)V

    iget-object v2, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v2, v2, Lcom/android/settings/development/DSULoader;->mDSUList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v2, v2, Lcom/android/settings/development/DSULoader;->mDSUList:Ljava/util/List;

    const-string v3, "No DSU available for this device"

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader;->mDSUList:Ljava/util/List;

    const-string v2, "Metadata Error"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader;->mDSUList:Ljava/util/List;

    const-string v2, "Network Error"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    new-instance v1, Lcom/android/settings/development/DSULoader$Fetcher$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DSULoader$Fetcher$1;-><init>(Lcom/android/settings/development/DSULoader$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/development/DSULoader$DSUPackage;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$DSUPackage;->mTosUrl:Ljava/net/URL;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Lcom/android/settings/development/DSULoader;->-$$Nest$smreadAll(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "DSULOADER"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, ""

    :goto_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    const-class v3, Lcom/android/settings/development/DSUTermsOfServiceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "KEY_TOS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/development/DSULoader$DSUPackage;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$DSUPackage;->mUri:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/development/DSULoader$DSUPackage;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$DSUPackage;->mPubKey:Ljava/lang/String;

    const-string v2, "KEY_PUBKEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
