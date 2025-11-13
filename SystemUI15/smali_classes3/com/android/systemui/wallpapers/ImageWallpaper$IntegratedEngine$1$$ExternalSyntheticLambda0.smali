.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;

    iget p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    sget v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x267

    if-eq p0, v2, :cond_0

    goto :goto_3

    :cond_0
    iget p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mWallpaperType:I

    const/16 v2, 0x8

    if-ne p0, v2, :cond_3

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    instance-of v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    if-eqz v0, :cond_3

    const-string v0, "current_position"

    check-cast p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->mVideoController:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mIsReleased:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->mActiveSession:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->getCurrentPosition()I

    move-result p0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController;->TAG:Ljava/lang/String;

    const-string v3, "getCurrentPosition: released"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-object v1
.end method
