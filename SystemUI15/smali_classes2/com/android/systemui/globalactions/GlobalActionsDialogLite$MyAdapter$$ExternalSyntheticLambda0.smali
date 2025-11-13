.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;

    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    instance-of v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->disableAllCurrentDialogsExitAnimations()V

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "GlobalActionsDialogLite"

    const-string v0, "Action clicked while mDialog is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->onPress()V

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$PowerOptionsAction;

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->disableAllCurrentDialogsExitAnimations()V

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    goto :goto_1

    :cond_2
    const-string p1, "GlobalActionsDialogLite"

    const-string v0, "Action clicked while mDialog is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-interface {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->onPress()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
