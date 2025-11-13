.class public final Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final context:Landroid/content/Context;

.field public final controller$delegate:Lkotlin/Lazy;

.field public educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

.field public final listener:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Listener;

.field public rootView:Landroid/view/ViewGroup;

.field public final scrimView$delegate:Lkotlin/Lazy;

.field public final springConfig$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Listener;

    sget-object p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$springConfig$2;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$springConfig$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->springConfig$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$scrimView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$scrimView$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->scrimView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$controller$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$controller$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->controller$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic hideEducation$default(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;Z)V
    .locals 1

    sget-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;->INSTANCE:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$1;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->hideEducation(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final animateTransition(ZLkotlin/jvm/functions/Function0;)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz p0, :cond_3

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    filled-new-array {p2}, [Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    if-nez p0, :cond_4

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final createEducationView(ILandroid/view/ViewGroup;)Lcom/android/wm/shell/common/bubbles/BubblePopupView;
    .locals 10

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x11200c8

    const v1, 0x1010571

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v8, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v0, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const v0, 0x7f07018e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v0, 0x7f07018a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v0, 0x7f070189

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v0, 0x7f070188

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;-><init>(IFIFFF)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    invoke-direct {p1, v8}, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;-><init>(Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$Config;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupView;->popupDrawable:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->forceLayout()V

    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-object p0
.end method

.method public final hideEducation(ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$2;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$2;-><init>(Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$hideEducation$3;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;Lkotlin/jvm/functions/Function0;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animateTransition(ZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->scrimView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->educationView:Lcom/android/wm/shell/common/bubbles/BubblePopupView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->rootView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$Listener;

    check-cast p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mLayerBoundsSupplier:Ljava/util/function/Supplier;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    iput-object p1, p2, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    :cond_5
    :goto_0
    return-void
.end method
