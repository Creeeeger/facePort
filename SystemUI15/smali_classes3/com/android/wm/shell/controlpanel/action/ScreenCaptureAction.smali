.class public final Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

.field public final mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;-><init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mHandler:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$1;

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;-><init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->mClipboardEventListener:Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$2;

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;->context:Landroid/content/Context;

    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRunningTaskExcept(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result v0

    const-string v1, "ScreenCaptureAction"

    if-nez v0, :cond_1

    const-string p0, "ScreenCapure is bloked by knox mode"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f1301c7

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "screen capture is blocked by emergency mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1306df

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f131374

    invoke-virtual {p0, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/action/ScreenCaptureAction;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
