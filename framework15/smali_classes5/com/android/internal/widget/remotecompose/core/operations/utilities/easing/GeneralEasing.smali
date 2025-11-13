.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "GeneralEasing.java"


# instance fields
.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field blacklist mEasingData:[F


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void
.end method


# virtual methods
.method blacklist createEngine()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist get(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result v0

    return v0
.end method

.method public blacklist getCurveSpecification()[F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    return-object v0
.end method

.method public blacklist getDiff(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result v0

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getType()I

    move-result v0

    return v0
.end method

.method public blacklist setCurveSpecification([F)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->createEngine()V

    return-void
.end method
