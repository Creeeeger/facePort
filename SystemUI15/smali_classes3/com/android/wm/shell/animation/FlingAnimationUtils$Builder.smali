.class public final Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mMaxLengthSeconds:F

.field public mSpeedUpFactor:F

.field public mX2:F

.field public mY2:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/wm/shell/animation/FlingAnimationUtils;
    .locals 7

    new-instance v6, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iget v3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    iget v4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mX2:F

    iget v5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mY2:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FFFF)V

    return-object v6
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mX2:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mY2:F

    return-void
.end method
