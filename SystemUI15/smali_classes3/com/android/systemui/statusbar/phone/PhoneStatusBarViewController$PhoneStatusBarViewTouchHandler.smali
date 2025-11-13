.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->getQuickPanelLogger()Lcom/android/systemui/log/QuickPanelLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v1, v1, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onInterceptTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->onTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->getQuickPanelLogger()Lcom/android/systemui/log/QuickPanelLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v1, v1, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->onTouch(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const-string v3, "onTouchForwardedFromStatusBar: panel disabled, ignoring touch at ("

    const-string v4, ","

    const-string v5, ")"

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->getQuickPanelLogger()Lcom/android/systemui/log/QuickPanelLogger;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "!centralSurfaces.commandQueuePanelsEnabled"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    if-nez v0, :cond_5

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeViewController;->isViewEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "onTouchForwardedFromStatusBar: panel view disabled"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->getQuickPanelLogger()Lcom/android/systemui/log/QuickPanelLogger;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const-string v1, "!shadeViewController.isViewEnabled"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_4
    return v0

    :cond_5
    invoke-interface {v1, p1}, Lcom/android/systemui/shade/ShadeViewController;->handleExternalTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
