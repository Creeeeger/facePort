.class Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;
.super Landroid/transition/Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TRANSITION_PROPERTIES:[Ljava/lang/String;


# instance fields
.field public final mController:Lcom/android/keyguard/KeyguardClockSwitchController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "splitShadeTransitionAdapter:boundsRight"

    const-string v1, "splitShadeTransitionAdapter:xInWindow"

    const-string v2, "splitShadeTransitionAdapter:boundsLeft"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->TRANSITION_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->mController:Lcom/android/keyguard/KeyguardClockSwitchController;

    return-void
.end method

.method public static captureValues(Landroid/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splitShadeTransitionAdapter:boundsLeft"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "splitShadeTransitionAdapter:boundsRight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "splitShadeTransitionAdapter:xInWindow"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "splitShadeTransitionAdapter:boundsLeft"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "splitShadeTransitionAdapter:xInWindow"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p3, p2

    if-lez p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    new-instance p3, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0, p2}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;II)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->TRANSITION_PROPERTIES:[Ljava/lang/String;

    return-object p0
.end method
