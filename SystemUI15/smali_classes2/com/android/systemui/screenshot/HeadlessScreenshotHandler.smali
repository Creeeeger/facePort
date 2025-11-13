.class public final Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotHandler;


# instance fields
.field public final imageCapture:Lcom/android/systemui/screenshot/ImageCapture;

.field public final imageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final notificationsControllerFactory:Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/ImageCapture;Landroid/os/UserManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->imageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iput-object p2, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->imageCapture:Lcom/android/systemui/screenshot/ImageCapture;

    iput-object p4, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->userManager:Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p6, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->notificationsControllerFactory:Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;

    return-void
.end method

.method public static final access$logScreenshotResultStatus(Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;Landroid/net/Uri;Lcom/android/systemui/screenshot/ScreenshotData;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->notificationsControllerFactory:Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;

    iget p1, p2, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    invoke-interface {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;->create(I)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object p0

    const p1, 0x7f131007

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->userManager:Landroid/os/UserManager;

    iget-object v1, p2, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 12

    iget v0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    iget v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->imageCapture:Lcom/android/systemui/screenshot/ImageCapture;

    check-cast v0, Lcom/android/systemui/screenshot/ImageCaptureImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureDisplay(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const-string p1, "HeadlessScreenshotHandler"

    const-string p2, "handleScreenshot: Screenshot bitmap was null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->notificationsControllerFactory:Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;

    invoke-interface {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;->create(I)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object p0

    const p1, 0x7f131006

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    check-cast p3, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-virtual {p3}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :cond_2
    move-object v4, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->imageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iget v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/os/UserHandle;I)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;

    move-object v6, v1

    move-object v7, v0

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler$handleScreenshot$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p1, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
