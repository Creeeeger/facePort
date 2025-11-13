.class public final Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $finisher:Ljava/util/function/Consumer;

.field public final synthetic $future:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic $requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field public final synthetic $screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture;",
            "Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;",
            "Lcom/android/systemui/screenshot/ScreenshotData;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->this$0:Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;

    iput-object p3, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    iput-object p4, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$finisher:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "HeadlessScreenshotHandler"

    const-string v1, "Saved screenshot: "

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/ImageExporter$Result;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->this$0:Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;

    iget-object v4, v3, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->access$logScreenshotResultStatus(Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;Landroid/net/Uri;Lcom/android/systemui/screenshot/ScreenshotData;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$finisher:Ljava/util/function/Consumer;

    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    check-cast v1, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    iget-object v1, v1, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    sget-boolean v3, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x2

    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Screenshot"

    const-string v4, "ignored remote exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "Failed to store screenshot"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$finisher:Ljava/util/function/Consumer;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;->$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    check-cast p0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    :goto_0
    return-void
.end method
