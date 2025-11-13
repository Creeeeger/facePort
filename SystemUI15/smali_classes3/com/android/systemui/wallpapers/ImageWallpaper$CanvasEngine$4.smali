.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedWakingUp()V
    .locals 2

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    sget v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->runAsWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
