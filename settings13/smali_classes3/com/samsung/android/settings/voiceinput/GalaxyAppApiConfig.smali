.class public Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;
.super Ljava/lang/Object;
.source "GalaxyAppApiConfig.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAbiType()Ljava/lang/String;
    .locals 0

    .line 129
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length p0, p0

    if-lez p0, :cond_0

    const-string p0, "64"

    return-object p0

    .line 131
    :cond_0
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length p0, p0

    if-lez p0, :cond_1

    const-string p0, "32"

    return-object p0

    :cond_1
    const-string p0, "ex"

    return-object p0
.end method

.method public getCC()Ljava/lang/String;
    .locals 3

    const-string v0, "@VoiceIn: GalaxyAppApiConfig"

    const-string v1, "NONE"

    .line 140
    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->init(Landroid/content/Context;)V

    .line 141
    new-instance v2, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;-><init>(Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;)V

    invoke-static {v2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    .line 156
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->getSaInfo()Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->getSaInfo()Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->getCC()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cc = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Could not getCC from SaInfo "

    .line 161
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public getCSC()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "NONE"

    :cond_1
    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 77
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SAMSUNG-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 45
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 56
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getPD()I
    .locals 2

    const-string p0, "@VoiceIn: GalaxyAppApiConfig"

    .line 105
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/settings/voiceinput/SamsungAppsConstant;->PD_TEST_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Normal user"

    .line 108
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string v0, "Exception while getting PD"

    .line 112
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "QA user"

    .line 114
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getSdkVersion()I
    .locals 0

    .line 72
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    return p0
.end method

.method public getSecondaryUniqueId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 4

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "@VoiceIn: GalaxyAppApiConfig"

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 95
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result versioncode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersionCode() Exception :: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "-1"

    return-object p0
.end method
