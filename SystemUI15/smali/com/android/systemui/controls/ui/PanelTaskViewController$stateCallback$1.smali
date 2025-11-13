.class public final Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressedOnTaskRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->hide:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onInitialized()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->activityContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    new-instance v2, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;-><init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    return-void
.end method

.method public final onTaskRemovalStarted(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/PanelTaskViewController;->release()V

    return-void
.end method
