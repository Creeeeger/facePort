.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    sget v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    iput v2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;)V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method
