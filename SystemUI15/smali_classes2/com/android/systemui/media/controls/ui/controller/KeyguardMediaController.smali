.class public final Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final context:Landroid/content/Context;

.field public isDozeWakeUpAnimationWaiting:Z

.field public final lastUsedStatusBarState:I

.field public final mediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public useSplitShade:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaControllerLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->lastUsedStatusBarState:I

    invoke-virtual {p8, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance p2, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;)V

    check-cast p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p2, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$2;-><init>(Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;)V

    check-cast p5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p5, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->setExpansion(F)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p3, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean p5, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    if-nez p2, :cond_0

    iput-boolean p5, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object p2, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-boolean p2, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    if-ne p2, p5, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p5, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    iget-object p2, p3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->init(I)V

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    check-cast p6, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->useSplitShade:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->useSplitShade:Z

    :goto_1
    return-void
.end method

.method public static synthetic getUseSplitShade$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    const-string p2, "KeyguardMediaController"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    const-string p2, "Self"

    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p2, "visible"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p2, "useSplitShade"

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->useSplitShade:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "bypassController.bypassEnabled"

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "isDozeWakeUpAnimationWaiting"

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->isDozeWakeUpAnimationWaiting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p2, "singlePaneContainer"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p2, "splitShadeContainer"

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->lastUsedStatusBarState:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const-string v0, "lastUsedStatusBarState"

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string/jumbo p2, "statusBarStateController.state"

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method
