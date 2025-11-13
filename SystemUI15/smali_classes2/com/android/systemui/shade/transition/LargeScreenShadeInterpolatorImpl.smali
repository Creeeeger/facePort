.class public final Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;


# instance fields
.field public final context:Landroid/content/Context;

.field public final portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lcom/android/systemui/shade/transition/SplitShadeInterpolator;Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    iput-object p5, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    new-instance p3, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl$1;-><init>(Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;)V

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    check-cast p5, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    return-void
.end method


# virtual methods
.method public final getBehindScrimAlpha(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;->getBehindScrimAlpha(F)F

    move-result p0

    return p0
.end method

.method public final getNotificationContentAlpha(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result p0

    return p0
.end method

.method public final getNotificationScrimAlpha(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolatorImpl;->portraitShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;->getNotificationScrimAlpha(F)F

    move-result p0

    return p0
.end method
