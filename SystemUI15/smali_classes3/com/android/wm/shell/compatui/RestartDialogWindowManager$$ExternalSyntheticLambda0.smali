.class public final synthetic Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mOnDismissCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/compatui/RestartDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;Landroid/app/TaskInfo;)V

    const v1, 0x7f0a062f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda3;Landroid/widget/CheckBox;)V

    const v1, 0x7f0a0635

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :goto_1
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mLayout:Lcom/android/wm/shell/compatui/RestartDialogLayout;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/DialogAnimationController;

    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/compatui/DialogAnimationController;->startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
