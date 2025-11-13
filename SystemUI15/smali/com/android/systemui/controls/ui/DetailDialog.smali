.class public final Lcom/android/systemui/controls/ui/DetailDialog;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityContext:Landroid/content/Context;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final controlDetailRoot:Landroid/view/View;

.field public final fillInIntent:Landroid/content/Intent;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final stateCallback:Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;

.field public final taskView:Lcom/android/wm/shell/taskview/TaskView;

.field public final taskViewContainer:Landroid/view/View;

.field public final taskWidthPercentWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/DetailDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/wm/shell/taskview/TaskView;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/util/SALogger;)V
    .locals 1

    const v0, 0x7f140617

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/DetailDialog;->pendingIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/DetailDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p8, p0, Lcom/android/systemui/controls/ui/DetailDialog;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskWidthPercentWidth:F

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "controls.DISPLAY_IN_PANEL"

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x80000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->fillInIntent:Landroid/content/Intent;

    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p4, 0x20

    invoke-virtual {p2, p4}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/high16 p4, 0x20000000

    invoke-virtual {p2, p4}, Landroid/view/Window;->addPrivateFlags(I)V

    :cond_1
    const p2, 0x7f0d0370

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    const p2, 0x7f0a02e4

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskViewContainer:Landroid/view/View;

    const p2, 0x7f0a02e3

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/controls/ui/DetailDialog$1$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/controls/ui/DetailDialog$1$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->controlDetailRoot:Landroid/view/View;

    const p2, 0x7f0a02e6

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->setAlpha(F)V

    const p2, 0x7f0a02e1

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance p4, Lcom/android/systemui/controls/ui/DetailDialog$3$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/controls/ui/DetailDialog$3$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a02e2

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance p4, Lcom/android/systemui/controls/ui/DetailDialog$4$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/controls/ui/DetailDialog$4$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    sget-object p4, Lcom/android/systemui/controls/ui/DetailDialog$5;->INSTANCE:Lcom/android/systemui/controls/ui/DetailDialog$5;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07027f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    :cond_2
    iget-object p0, p5, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {p3, p0, p1}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    sget-object p0, Lcom/android/systemui/controls/util/SALogger$Screen$CustomPanel;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$CustomPanel;

    invoke-virtual {p8, p0}, Lcom/android/systemui/controls/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getStateCallback$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->removeTask()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
