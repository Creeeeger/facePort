.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEventReceived(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;

    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isFlagEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "apply: Event received from KeyguardWallpaper. mWhich = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mWhich:I

    invoke-static {p2, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-object v2

    :cond_0
    const/16 v1, 0x25d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x25e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x267

    if-eq p1, v1, :cond_1

    const/16 v1, 0x268

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2d4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2dc

    if-eq p1, v1, :cond_2

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    const-string p2, "apply: event = "

    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mKeygurdEventExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_2
    return-object v2

    :cond_2
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine$1;ILandroid/os/Bundle;)V

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$IntegratedEngine;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "runAsWorkerThread: mWorker is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-object v2
.end method
