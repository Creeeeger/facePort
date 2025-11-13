.class public final Landroid/content/res/CompatibilityInfo$CompatScale;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompatScale"
.end annotation


# instance fields
.field public final blacklist mDensityScaleFactor:F

.field public final blacklist mScaleFactor:F


# direct methods
.method public constructor blacklist <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(FF)V

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    iput p2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/res/CompatibilityInfo$CompatScale;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/content/res/CompatibilityInfo$CompatScale;

    iget v3, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    iget v4, v1, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    iget v4, v1, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v2

    :cond_3
    return v0

    :catch_0
    move-exception v0

    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "mScaleFactor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mDensityScaleFactor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
