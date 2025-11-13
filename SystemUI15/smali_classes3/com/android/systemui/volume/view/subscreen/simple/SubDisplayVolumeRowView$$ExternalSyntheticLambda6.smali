.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mTargetProgressLevel:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v1

    const-string/jumbo v2, "progress"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mTargetProgressLevel:I

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
