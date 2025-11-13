.class public Lcom/samsung/android/settings/voiceinput/RecognizerUtils;
.super Ljava/lang/Object;
.source "RecognizerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;
    }
.end annotation


# direct methods
.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    const-string v0, "-"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v0, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSCSLanguagePackStoreLinkIntent(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Intent;
    .locals 3

    .line 64
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 66
    new-instance p1, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->LOCAL:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    .line 68
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->get(Landroid/content/Context;Ljava/util/Locale;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getStoreLinkAction()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getSCSLanguagePackageName(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 55
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 57
    new-instance p1, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->LOCAL:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    .line 59
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->get(Landroid/content/Context;Ljava/util/Locale;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getTargetResourcePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSCSVersion(Landroid/content/Context;)I
    .locals 2

    const-string v0, "com.samsung.android.scs"

    .line 22
    invoke-static {p0, v0}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scsApkVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: RecognizerUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isSCSFeatureEnabled(Landroid/content/Context;)Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;
    .locals 4

    const-string v0, "FEATURE_SPEECH_RECOGNITION"

    .line 38
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->getSCSVersion(Landroid/content/Context;)I

    move-result p0

    if-nez v0, :cond_0

    .line 40
    sget-object v1, Lcom/samsung/android/settings/voiceinput/Constants;->SCS_STABLE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scsAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@VoiceIn: RecognizerUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scsApkVersion : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enable scs ? : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 44
    sget-object p0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;->NOT_AVAILABLE:Lcom/samsung/android/settings/voiceinput/RecognizerUtils$SCS;

    :goto_1
    return-object p0
.end method
