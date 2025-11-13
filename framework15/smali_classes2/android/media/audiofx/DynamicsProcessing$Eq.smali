.class public final Landroid/media/audiofx/DynamicsProcessing$Eq;
.super Landroid/media/audiofx/DynamicsProcessing$BandStage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eq"
.end annotation


# instance fields
.field private final greylist-max-o mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 4

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iget-object v3, p1, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    :goto_1
    return-void
.end method

.method public constructor whitelist <init>(ZZI)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, p3, [Landroid/media/audiofx/DynamicsProcessing$EqBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    const v1, 0x469c4000    # 20000.0f

    const/4 v2, 0x1

    if-le p3, v2, :cond_0

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v3

    int-to-float v4, v0

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMaxFreqLog()F

    move-result v5

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    :cond_0
    iget-object v3, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v4, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(ZFF)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    :goto_1
    return-void
.end method

.method private greylist-max-o checkBand(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->checkBand(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->checkBand(I)V

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$EqBand;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$EqBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$EqBand;)V

    aput-object v1, v0, p1

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->EqBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  Band %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Eq;->mBands:[Landroid/media/audiofx/DynamicsProcessing$EqBand;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$EqBand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
