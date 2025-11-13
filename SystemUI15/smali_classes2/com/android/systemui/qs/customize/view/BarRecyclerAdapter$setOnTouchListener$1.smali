.class public final Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $holder:Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;->this$0:Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;->$holder:Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;->this$0:Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$setOnTouchListener$1;->$holder:Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;

    sget-object v0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter;->DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->releaseAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/systemui/util/ValueAnimatorUtil;->startReleaseScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;FLandroid/animation/ValueAnimator;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->downAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/BarRecyclerAdapter$BorderOutlineViewHolder;->parentView:Landroid/view/ViewGroup;

    const v1, 0x3f7ae148    # 0.98f

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/util/ValueAnimatorUtil;->startDownScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    return p2
.end method
