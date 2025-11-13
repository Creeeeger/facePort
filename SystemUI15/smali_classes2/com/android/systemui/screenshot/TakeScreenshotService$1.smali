.class public final Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

    check-cast p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->screenshotShelfUi2()V

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController;->mActionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

    iget-boolean p1, p1, Lcom/android/systemui/screenshot/ActionExecutor;->isPendingSharedTransition:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;)V

    :cond_0
    return-void
.end method
