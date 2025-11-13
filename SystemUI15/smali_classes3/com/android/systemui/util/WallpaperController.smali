.class public final Lcom/android/systemui/util/WallpaperController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private notificationShadeZoomOut:F

.field private rootView:Landroid/view/View;

.field private unfoldTransitionZoomOut:F

.field private final wallpaperManager:Landroid/app/WallpaperManager;

.field private final wallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/WallpaperController;->wallpaperManager:Landroid/app/WallpaperManager;

    iput-object p2, p0, Lcom/android/systemui/util/WallpaperController;->wallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    return-void
.end method

.method private final getShouldUseDefaultUnfoldTransition()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/WallpaperController;->wallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    check-cast p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->shouldUseDefaultUnfoldTransition()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final setWallpaperZoom(F)V
    .locals 4

    const-string v0, "WallpaperController"

    const-string v1, "Won\'t set zoom. Window not attached "

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/util/WallpaperController;->rootView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/WallpaperController;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/WallpaperController;->rootView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t set zoom. Window is gone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private final updateZoom()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/WallpaperController;->notificationShadeZoomOut:F

    iget v1, p0, Lcom/android/systemui/util/WallpaperController;->unfoldTransitionZoomOut:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/WallpaperController;->setWallpaperZoom(F)V

    return-void
.end method


# virtual methods
.method public final getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/WallpaperController;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public final setNotificationShadeZoom(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/WallpaperController;->notificationShadeZoomOut:F

    invoke-direct {p0}, Lcom/android/systemui/util/WallpaperController;->updateZoom()V

    return-void
.end method

.method public final setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/WallpaperController;->rootView:Landroid/view/View;

    return-void
.end method

.method public final setUnfoldTransitionZoom(F)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/WallpaperController;->getShouldUseDefaultUnfoldTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/util/WallpaperController;->unfoldTransitionZoomOut:F

    invoke-direct {p0}, Lcom/android/systemui/util/WallpaperController;->updateZoom()V

    :cond_0
    return-void
.end method
