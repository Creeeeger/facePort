.class public final Landroidx/recyclerview/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationCancel$androidx$recyclerview$widget$RecyclerView$16(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$androidx$recyclerview$widget$RecyclerView$2(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$androidx$recyclerview$widget$RecyclerView$16(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$androidx$recyclerview$widget$RecyclerView$2(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$androidx$recyclerview$widget$RecyclerView$2(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$2;->$r8$classId:I

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop$1(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iput v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAnimFlag:I

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$2;->$r8$classId:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
