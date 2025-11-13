.class public final Lcom/samsung/android/displayquality/SemDisplayQualityManager;
.super Ljava/lang/Object;
.source "SemDisplayQualityManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDisplayQualityManager"

.field private static blacklist mSemDisplayQualityManager:Lcom/samsung/android/displayquality/SemDisplayQualityManager;


# instance fields
.field final blacklist mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/displayquality/ISemDisplayQualityManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string v0, "SemDisplayQualityManager"

    const-string v1, "In Constructor Stub-Service(ISemDisplayQualityManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    .line 30
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/displayquality/SemDisplayQualityManager;
    .locals 3

    .line 33
    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mSemDisplayQualityManager:Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "DisplayQuality"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    move-result-object v1

    .line 36
    .local v1, "service":Lcom/samsung/android/displayquality/ISemDisplayQualityManager;
    new-instance v2, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    invoke-direct {v2, v1}, Lcom/samsung/android/displayquality/SemDisplayQualityManager;-><init>(Lcom/samsung/android/displayquality/ISemDisplayQualityManager;)V

    sput-object v2, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mSemDisplayQualityManager:Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    .line 39
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "service":Lcom/samsung/android/displayquality/ISemDisplayQualityManager;
    :cond_0
    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mSemDisplayQualityManager:Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    return-object v0
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 69
    const-string v0, "SemDisplayQualityManager"

    const-string v1, "Error SemDisplayQualityManager"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist enhanceDisplayOutdoorVisibilityByLux(I)V
    .locals 3
    .param p1, "lux"    # I

    .line 43
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    const-string v1, "SemDisplayQualityManager"

    if-nez v0, :cond_0

    .line 44
    const-string v0, "SemDisplayQualityManagerService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager;->enhanceDisplayOutdoorVisibilityByLux(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enhanceOutdoorVisibilityByLux"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setAdaptiveSync(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 56
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    const-string v1, "SemDisplayQualityManager"

    if-nez v0, :cond_0

    .line 57
    const-string v0, "SemDisplayQualityManagerService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager;->setAdaptiveSync(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setAdaptiveSync"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
