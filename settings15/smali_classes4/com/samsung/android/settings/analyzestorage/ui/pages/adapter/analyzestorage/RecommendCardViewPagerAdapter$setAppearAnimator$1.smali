.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $holder:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f010003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f010001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->isDuringAnimation:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
