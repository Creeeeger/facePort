.class public final Lcom/android/systemui/util/AnimHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/systemui/util/AnimHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/AnimHelper;

    invoke-direct {v0}, Lcom/android/systemui/util/AnimHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$updateProperty(Lcom/android/systemui/util/AnimHelper;Landroid/view/View;FLcom/android/systemui/util/AnimHelper$AnimationType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/AnimHelper;->updateProperty(Landroid/view/View;FLcom/android/systemui/util/AnimHelper$AnimationType;)V

    return-void
.end method

.method public static synthetic makeAnimSet$default(Lcom/android/systemui/util/AnimHelper;[Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;ILjava/lang/Object;)Landroid/animation/AnimatorSet;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private final makeAnimator(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)Landroid/animation/Animator;
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->getFromValue()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->getToValue()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v0, v1, p0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->getStartDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/util/AnimHelper$makeAnimator$1$1$1;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final updateProperty(Landroid/view/View;FLcom/android/systemui/util/AnimHelper$AnimationType;)V
    .locals 0

    sget-object p0, Lcom/android/systemui/util/AnimHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    const/4 p3, 0x1

    if-eq p0, p3, :cond_1

    const/4 p3, 0x2

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final varargs initProperty([Lcom/android/systemui/util/AnimHelper$AnimationType;[Landroid/view/View;)V
    .locals 5

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v3, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v2}, Lcom/android/systemui/util/AnimHelper;->updateProperty(Landroid/view/View;FLcom/android/systemui/util/AnimHelper$AnimationType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/util/AnimHelper$AnimPairSet;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    sget-object v2, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;->getAnimProperty()Lcom/android/systemui/util/AnimHelper$AnimProperty;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/util/AnimHelper;->makeAnimator(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-object p0
.end method
