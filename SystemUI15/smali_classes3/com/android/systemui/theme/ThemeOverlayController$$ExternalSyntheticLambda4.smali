.class public final synthetic Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v1

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;)V

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
