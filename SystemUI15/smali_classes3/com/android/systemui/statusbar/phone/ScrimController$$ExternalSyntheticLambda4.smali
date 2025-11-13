.class public final synthetic Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/LightBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ScrimState;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p3, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    if-nez p1, :cond_3

    sget p1, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v5

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v4

    :goto_3
    invoke-virtual {p3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p2

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    move p3, v4

    goto :goto_4

    :cond_4
    move p3, v5

    :goto_4
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceLightForScrim:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBouncerVisible:Z

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    goto :goto_6

    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p1, :cond_7

    if-eq p3, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    goto :goto_6

    :cond_7
    if-eq v4, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_8
    :goto_6
    return-void
.end method
