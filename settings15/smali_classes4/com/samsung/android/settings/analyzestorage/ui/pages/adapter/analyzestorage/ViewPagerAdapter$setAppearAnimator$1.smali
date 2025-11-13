.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz p1, :cond_0

    const p1, 0x7f14043d

    goto :goto_0

    :cond_0
    const p1, 0x7f14043e

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isShowMoreItem:Z

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setChildVisible()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    iget-boolean p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x64

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x32

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->showMoreContainer$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v0, 0x7f010002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setAppearAnimation(Landroid/view/animation/Animation;Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->showMoreContainer$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const/high16 v0, 0x7f010000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setAppearAnimation(Landroid/view/animation/Animation;Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
