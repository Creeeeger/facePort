.class public final Landroid/media/audiofx/DynamicsProcessing$MbcBand;
.super Landroid/media/audiofx/DynamicsProcessing$BandBase;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MbcBand"
.end annotation


# instance fields
.field private greylist-max-o mAttackTime:F

.field private greylist-max-o mExpanderRatio:F

.field private greylist-max-o mKneeWidth:F

.field private greylist-max-o mNoiseGateThreshold:F

.field private greylist-max-o mPostGain:F

.field private greylist-max-o mPreGain:F

.field private greylist-max-o mRatio:F

.field private greylist-max-o mReleaseTime:F

.field private greylist-max-o mThreshold:F


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->getCutoffFrequency()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method

.method public constructor whitelist <init>(ZFFFFFFFFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$BandBase;-><init>(ZF)V

    iput p3, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    iput p5, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    iput p7, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    iput p8, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    iput p9, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    iput p10, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    iput p11, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method


# virtual methods
.method public whitelist getAttackTime()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return v0
.end method

.method public whitelist getExpanderRatio()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return v0
.end method

.method public whitelist getKneeWidth()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return v0
.end method

.method public whitelist getNoiseGateThreshold()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return v0
.end method

.method public whitelist getPostGain()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return v0
.end method

.method public whitelist getPreGain()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return v0
.end method

.method public whitelist getRatio()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return v0
.end method

.method public whitelist getReleaseTime()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return v0
.end method

.method public whitelist getThreshold()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return v0
.end method

.method public whitelist setAttackTime(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    return-void
.end method

.method public whitelist setExpanderRatio(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    return-void
.end method

.method public whitelist setKneeWidth(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mKneeWidth:F

    return-void
.end method

.method public whitelist setNoiseGateThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    return-void
.end method

.method public whitelist setPostGain(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    return-void
.end method

.method public whitelist setPreGain(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    return-void
.end method

.method public whitelist setRatio(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    return-void
.end method

.method public whitelist setReleaseTime(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    return-void
.end method

.method public whitelist setThreshold(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mAttackTime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " AttackTime: %f (ms)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mReleaseTime:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " ReleaseTime: %f (ms)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Ratio: 1:%f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Threshold: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mNoiseGateThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " NoiseGateThreshold: %f(dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mExpanderRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " ExpanderRatio: %f:1\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPreGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " PreGain: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->mPostGain:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " PostGain: %f (dB)\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
