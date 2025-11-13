.class public Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "@VoiceIn: GalaxyAppApiConfig"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCC()Ljava/lang/String;
    .locals 4

    const-string v0, "@VoiceIn: GalaxyAppApiConfig"

    const-string v1, "cc = "

    const-string v2, "NONE"

    iget-object v3, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->init(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig$1;-><init>(Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;)V

    invoke-static {v3}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->getSaInfo()Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->getSaInfo()Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->getCC()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Could not getCC from SaInfo "

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public final getCallerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMCC()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getMNC()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getSecondaryUniqueId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "@VoiceIn: GalaxyAppApiConfig"

    const-string/jumbo v1, "result versioncode = "

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getVersionCode() Exception :: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "-1"

    return-object p0
.end method
