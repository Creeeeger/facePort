.class public final Lcom/samsung/android/displayquality/SemDisplayQualityManager;
.super Ljava/lang/Object;
.source "SemDisplayQualityManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDisplayQualityManager"

.field private static final blacklist mEnabled:Z

.field private static final blacklist mSupportOutdoor:Z


# instance fields
.field private final blacklist mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mEnabled:Z

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mSupportOutdoor:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/displayquality/ISemDisplayQualityManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "SemDisplayQualityManager"

    const-string v1, "In Constructor Stub-Service(ISemDisplayQualityManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    return-void
.end method

.method private blacklist onError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "SemDisplayQualityManager"

    const-string v1, "Error SemDisplayQualityManager"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public blacklist enhanceDisplayOutdoorVisibilityByLux(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mEnabled:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mSupportOutdoor:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    const-string v1, "SemDisplayQualityManager"

    if-nez v0, :cond_1

    const-string v0, "SemDisplayQualityManagerService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->mService:Lcom/samsung/android/displayquality/ISemDisplayQualityManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager;->enhanceDisplayOutdoorVisibilityByLux(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "enhanceOutdoorVisibilityByLux"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
