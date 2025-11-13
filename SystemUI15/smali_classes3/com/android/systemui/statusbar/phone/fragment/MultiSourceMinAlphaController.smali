.class public final Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alphas:Ljava/util/Map;

.field public final animators:Ljava/util/Map;

.field public final initialAlpha:F

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;-><init>(Landroid/view/View;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->view:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->initialAlpha:F

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->alphas:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animators:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;-><init>(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public final animateToAlpha(FJLandroidx/core/animation/PathInterpolator;J)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animators:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->getMinAlpha()F

    move-result v1

    new-array v4, v2, [F

    aput v1, v4, v0

    const/4 v1, 0x1

    aput p1, v4, v1

    invoke-static {v4}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1, p5, p6}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    iput-object p4, p1, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;

    invoke-direct {p2, p0, p1, v2}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController$animateToAlpha$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;Landroidx/core/animation/ValueAnimator;I)V

    invoke-virtual {p1, p2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v0}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animators:Ljava/util/Map;

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getMinAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->alphas:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->initialAlpha:F

    :goto_2
    return p0
.end method

.method public final updateAlpha(FI)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->alphas:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->getMinAlpha()F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->view:Landroid/view/View;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
