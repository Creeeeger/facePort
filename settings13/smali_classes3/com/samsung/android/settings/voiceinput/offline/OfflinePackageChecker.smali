.class public Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;
.super Ljava/lang/Object;
.source "OfflinePackageChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;,
        Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1NDWqk_ByTVIFwy7D0EbFrA52PA(Lio/reactivex/ObservableEmitter;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$8(Lio/reactivex/ObservableEmitter;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$28---BQKOpEsGWoh6h29QXyoMW4(Landroid/content/Context;Lio/reactivex/ObservableEmitter;ZLjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$7(Landroid/content/Context;Lio/reactivex/ObservableEmitter;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5E0ehBQ3mHbc2J5W5YTKtRZt31I(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$4(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A28uqKY0vS1V5puDAZ10zpvV1WE(Landroid/content/Context;ZLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$9(Landroid/content/Context;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbqQ67gXTcLBNpqI0A_7E4Yt5yk(Ljava/util/List;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$3(Ljava/util/List;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LOYfFvCqkx7O_ZVxQsYWR2w9drA(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$1(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bRU03U45Bt2UxYJodf6dq0Oap-g(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$6(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ce9yq89BYzYklVhKseNF4-PB-Nk(Ljava/util/Locale;Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$0(Ljava/util/Locale;Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iJMwwq6EMQcVvbpfYmaJhiF_fL8(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$5(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$phSB0v2Ny6EKM52bjkjmbuVIrY0(Ljava/util/concurrent/CompletableFuture;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->lambda$updateLanguagePackage$2(Ljava/util/concurrent/CompletableFuture;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    move-result-object p0

    return-object p0
.end method

.method private static checkAndUpdateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndUpdateVersion cachedVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " installedVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: OfflinePackageChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->getVersion(Ljava/lang/String;)I

    move-result p1

    .line 141
    invoke-static {p2}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->getVersion(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 144
    invoke-static {p0, p3, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-gt p1, v0, :cond_1

    const/4 p1, 0x3

    .line 147
    invoke-static {p0, p3, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 148
    invoke-static {p0, p3, p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p0, p3}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 151
    invoke-static {p0, p3, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 153
    invoke-static {p0, p3, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .line 175
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;-><init>(Landroid/os/Handler;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor-IA;)V

    return-object v0
.end method

.method private static synthetic lambda$updateLanguagePackage$0(Ljava/util/Locale;Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appUpdateData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: OfflinePackageChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->getmResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;-><init>(Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)V

    return-object p0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error occurred while fetching the language status for locale = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic lambda$updateLanguagePackage$1(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
    .locals 1

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Async Exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "@VoiceIn: OfflinePackageChecker"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$updateLanguagePackage$2(Ljava/util/concurrent/CompletableFuture;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
    .locals 0

    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    return-object p0
.end method

.method private static synthetic lambda$updateLanguagePackage$3(Ljava/util/List;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    .line 63
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda6;-><init>()V

    .line 64
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 65
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$updateLanguagePackage$4(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateLanguagePackage$5(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateLanguagePackage$6(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)V
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->updateLanguagePackStatus(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)V

    return-void
.end method

.method private static synthetic lambda$updateLanguagePackage$7(Landroid/content/Context;Lio/reactivex/ObservableEmitter;ZLjava/util/List;)V
    .locals 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listCustomAppUpdateData size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: OfflinePackageChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda7;-><init>()V

    .line 69
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->getFirstFetchStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Updating First Fetch Status"

    .line 74
    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 76
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setFirstFetchStatus(Landroid/content/Context;Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setDictationLangPackRequestTime(Landroid/content/Context;Ljava/lang/Long;)V

    .line 83
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda8;-><init>()V

    .line 84
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$updateLanguagePackage$8(Lio/reactivex/ObservableEmitter;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "whenComplete "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "@VoiceIn: OfflinePackageChecker"

    invoke-static {p2, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 92
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$updateLanguagePackage$9(Landroid/content/Context;ZLio/reactivex/ObservableEmitter;)V
    .locals 8

    .line 34
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->getLocaleCodes(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-static {p0, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->isOfflineSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@VoiceIn: OfflinePackageChecker"

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 40
    invoke-static {p0, v2}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0, v5}, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->getAppUpdateData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/concurrent/CompletableFuture;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 62
    new-instance v2, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lio/reactivex/ObservableEmitter;Z)V

    .line 88
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 66
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda5;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 89
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static updateCacheForCurrentLocale(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCacheForCurrentLocale localeCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn: OfflinePackageChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->getLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->getLanguagePackageDefaultVersion()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cachedVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " installedVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p0, v0, v2, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->checkAndUpdateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateLanguagePackStatus(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)V
    .locals 8

    const-string v0, "@VoiceIn: OfflinePackageChecker"

    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->-$$Nest$fgetappUpdateData(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    move-result-object v1

    .line 100
    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->-$$Nest$fgetlocaleCode(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->getmResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->isAppContentAvailable(Ljava/lang/String;)Z

    move-result v2

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localeCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isupdateavailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->getmContentSize()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->getmContentSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    .line 105
    div-long/2addr v4, v6

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sizeInMB "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->getmVersionCode()Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionFromServer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to download pack for localeCode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 115
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    invoke-static {p0, p1, v1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to update pack for localeCode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 119
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 120
    invoke-static {p0, p1, v1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getMatchedPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated Package downloaded :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 125
    invoke-static {p0, p1, v1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 127
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Package Available for localeCode :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, p1, v1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " exception caught"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static updateLanguagePackage(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "@VoiceIn: OfflinePackageChecker"

    const-string v1, "updateLanguagePackage"

    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputUtils;->isLangPackRequestNeeded(Landroid/content/Context;)Z

    move-result v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLanguagePackage::isLangPackRequestNeeded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ZLio/reactivex/ObservableEmitter;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
