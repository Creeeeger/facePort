.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;

.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;->run()V

    :cond_0
    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object p1, p1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    const-string/jumbo v1, "setItemAnimator = null"

    invoke-static {v0, v1}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;->rollback:Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda7;

    :cond_0
    return-void
.end method
