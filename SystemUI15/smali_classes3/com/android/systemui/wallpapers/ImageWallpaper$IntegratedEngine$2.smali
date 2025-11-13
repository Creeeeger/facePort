.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;


# instance fields
.field public mBbqOfPendingTransactionRequest:Landroid/graphics/BLASTBufferQueue;

.field public final mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;)V

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->mChoreographerFrameCallback:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;

    return-void
.end method


# virtual methods
.method public final getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 3

    sget v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "mSurfaceControl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSurfaceControl: e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
