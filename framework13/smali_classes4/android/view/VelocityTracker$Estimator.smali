.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final greylist-max-o MAX_DEGREE:I = 0x4


# instance fields
.field public greylist-max-r confidence:F

.field public greylist-max-r degree:I

.field public final greylist-max-r xCoeff:[F

.field public final greylist-max-r yCoeff:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x5

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    .line 445
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    return-void
.end method

.method private greylist-max-o estimate(F[F)F
    .locals 4
    .param p1, "time"    # F
    .param p2, "c"    # [F

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "a":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 499
    .local v1, "scale":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt v2, v3, :cond_0

    .line 500
    aget v3, p2, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 501
    mul-float/2addr v1, p1

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public greylist-max-o estimateX(F)F
    .locals 1
    .param p1, "time"    # F

    .line 466
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public greylist-max-o estimateY(F)F
    .locals 1
    .param p1, "time"    # F

    .line 475
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getXCoeff(I)F
    .locals 1
    .param p1, "index"    # I

    .line 484
    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    aget v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o getYCoeff(I)F
    .locals 1
    .param p1, "index"    # I

    .line 493
    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    aget v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
