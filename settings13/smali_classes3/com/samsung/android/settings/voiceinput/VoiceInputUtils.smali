.class public Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;
.super Ljava/lang/Object;
.source "VoiceInputUtils.java"


# static fields
.field public static TAG:Ljava/lang/String; = "@VoiceIn: VoiceInputUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getVersion(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 55
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->TAG:Ljava/lang/String;

    const-string v0, "Invalid versionCode"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isAppContentAvailable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGalaxyStoreEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.app.samsungapps"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 62
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static isLangPackRequestNeeded(Landroid/content/Context;)Z
    .locals 3

    .line 22
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 23
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->getDictationLangPackRequestTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 24
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 25
    invoke-virtual {p0, v0}, Ljava/time/ZonedDateTime;->isBefore(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result p0

    return p0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "uimode"

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 38
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPieDevice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
