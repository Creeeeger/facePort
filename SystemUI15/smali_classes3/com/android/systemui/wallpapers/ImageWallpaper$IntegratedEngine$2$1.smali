.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$2:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;->this$2:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2$1;->this$2:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget-object p2, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSubEngine:Lcom/android/systemui/wallpaper/engines/WallpaperEngine;

    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p2, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->draw(Landroid/view/SurfaceHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
