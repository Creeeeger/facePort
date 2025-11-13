.class public final Landroidx/core/animation/Keyframe$FloatKeyframe;
.super Landroidx/core/animation/Keyframe;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/animation/Keyframe;-><init>()V

    iput p1, p0, Landroidx/core/animation/Keyframe;->mFraction:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/animation/Keyframe;-><init>()V

    iput p1, p0, Landroidx/core/animation/Keyframe;->mFraction:F

    iput p2, p0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/animation/Keyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public final clone()Landroidx/core/animation/Keyframe$FloatKeyframe;
    .locals 3

    iget-boolean v0, p0, Landroidx/core/animation/Keyframe;->mHasValue:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    iget v1, p0, Landroidx/core/animation/Keyframe;->mFraction:F

    iget v2, p0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    iget v1, p0, Landroidx/core/animation/Keyframe;->mFraction:F

    invoke-direct {v0, v1}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(F)V

    :goto_0
    iget-object v1, p0, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    iput-object v1, v0, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget-boolean p0, p0, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z

    iput-boolean p0, v0, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/Keyframe;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe$FloatKeyframe;->clone()Landroidx/core/animation/Keyframe$FloatKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/Keyframe$FloatKeyframe;->clone()Landroidx/core/animation/Keyframe$FloatKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/animation/Keyframe;->mHasValue:Z

    :cond_0
    return-void
.end method
