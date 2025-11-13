.class public Lcom/samsung/android/share/SemShareRotateLayout;
.super Landroid/widget/FrameLayout;
.source "SemShareRotateLayout.java"


# static fields
.field private static final blacklist ROTATE_DURATION:J = 0x12cL

.field private static final blacklist TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field private blacklist mAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mRotation:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRotateLayout;->init()V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRotateLayout;->init()V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRotateLayout;->init()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareRotateLayout;->init()V

    .line 35
    return-void
.end method

.method private blacklist init()V
    .locals 5

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mRotation:F

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string/jumbo v1, "rotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 40
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private blacklist rotate(F)V
    .locals 4
    .param p1, "toDegree"    # F

    .line 45
    iget-object v0, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mRotation:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 48
    iput p1, p0, Lcom/samsung/android/share/SemShareRotateLayout;->mRotation:F

    .line 50
    :cond_0
    return-void
.end method

.method public static blacklist rotateView(Lcom/samsung/android/share/SemShareRotateLayout;F)V
    .locals 0
    .param p0, "view"    # Lcom/samsung/android/share/SemShareRotateLayout;
    .param p1, "rotation"    # F

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareRotateLayout;->rotate(F)V

    .line 54
    return-void
.end method
