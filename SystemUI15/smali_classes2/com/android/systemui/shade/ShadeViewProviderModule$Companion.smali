.class public final Lcom/android/systemui/shade/ShadeViewProviderModule$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shade/ShadeViewProviderModule$Companion;-><init>()V

    return-void
.end method

.method public static provideNetspeedViewController(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/android/systemui/statusbar/policy/NetspeedViewController;
    .locals 7

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0992

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    const v1, 0x7f0a07cb

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetspeedView;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/NetspeedViewController;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static providesAuthRippleView(Lcom/android/systemui/shade/NotificationShadeWindowView;)Lcom/android/systemui/biometrics/AuthRippleView;
    .locals 1

    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    return-object p0
.end method
