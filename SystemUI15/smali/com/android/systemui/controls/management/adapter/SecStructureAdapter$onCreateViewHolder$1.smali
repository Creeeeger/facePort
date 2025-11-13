.class public final Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onCreateViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    check-cast v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    iget-object v0, v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "ItemTouchHelper"

    if-nez v1, :cond_1

    const-string v1, "Start drag has been called but dragging is not enabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130560

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v1, v2, :cond_2

    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onCreateViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/16 p0, 0x6c

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method
