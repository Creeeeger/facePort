.class public Landroid/media/audiofx/DynamicsProcessing$BandBase;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandBase"
.end annotation


# instance fields
.field private greylist-max-o mCutoffFrequency:F

.field private greylist-max-o mEnabled:Z


# direct methods
.method public constructor whitelist <init>(ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return-void
.end method


# virtual methods
.method public whitelist getCutoffFrequency()F
    .locals 1

    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    return v0
.end method

.method public whitelist setCutoffFrequency(F)V
    .locals 0

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Enabled: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$BandBase;->mCutoffFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " CutoffFrequency: %f\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
