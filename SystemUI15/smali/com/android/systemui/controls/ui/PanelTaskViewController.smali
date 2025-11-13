.class public final Lcom/android/systemui/controls/ui/PanelTaskViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityContext:Landroid/content/Context;

.field public final fillInIntent:Landroid/content/Intent;

.field public final hide:Lkotlin/jvm/functions/Function0;

.field public final pendingIntent:Landroid/app/PendingIntent;

.field public final stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

.field public final taskView:Lcom/android/wm/shell/taskview/TaskView;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/PendingIntent;",
            "Lcom/android/wm/shell/taskview/TaskView;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->activityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->pendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->hide:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->fillInIntent:Landroid/content/Intent;

    new-instance p1, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;-><init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->stateCallback:Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/android/systemui/controls/ui/PanelTaskViewController$1;->INSTANCE:Lcom/android/systemui/controls/ui/PanelTaskViewController$1;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/ui/PanelTaskViewController;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/PendingIntent;Lcom/android/wm/shell/taskview/TaskView;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    return-void
.end method
