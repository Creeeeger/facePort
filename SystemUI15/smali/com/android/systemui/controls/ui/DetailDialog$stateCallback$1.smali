.class public final Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/taskview/TaskView$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressedOnTaskRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    return-void
.end method

.method public final onInitialized()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskViewContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskWidthPercentWidth:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->activityContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setTaskAlwaysOnTop(Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/DetailDialog;->pendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->fillInIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    const p1, 0x7f0a02e6

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final onTaskRemovalStarted(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$stateCallback$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    return-void
.end method
