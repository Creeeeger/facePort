.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimSpecArray:[[F

.field public final mAnimation:Landroid/view/animation/Animation;

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mBounds:Landroid/graphics/Rect;

.field public final mDisplayContext:Landroid/content/Context;

.field public final mRadius:F

.field public final mTmpFloat9:[F

.field public final mTmpTransformation:Landroid/view/animation/Transformation;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpFloat9:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    filled-new-array {v3, v0, v1, v2}, [[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimSpecArray:[[F

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mDisplayContext:Landroid/content/Context;

    const v0, 0x10a00b2

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40900000    # 4.5f
        -0x3fa80000    # -3.375f
        0x40100000    # 2.25f
        -0x40700000    # -1.125f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4049999a    # 3.15f
        -0x4072e148    # -1.1025f
        0x3f3c28f6    # 0.735f
        -0x4143d70a    # -0.3675f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3f700000    # -4.5f
        0x40580000    # 3.375f
        -0x3ff00000    # -2.25f
        0x3f900000    # 1.125f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x3fb66666    # -3.15f
        0x3f8d1eb8    # 1.1025f
        -0x40c3d70a    # -0.735f
        0x3ebc28f6    # 0.3675f
        0x0
    .end array-data
.end method


# virtual methods
.method public final getKeyFrames(FZZ)[Landroid/animation/Keyframe;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    add-int/2addr p2, p3

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimSpecArray:[[F

    aget-object p0, p0, p2

    array-length p2, p0

    new-array p2, p2, [Landroid/animation/Keyframe;

    array-length p3, p0

    if-nez p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    aget p0, p0, v0

    mul-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p0

    aput-object p0, p2, v0

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v0, p3, :cond_3

    int-to-float v1, v0

    add-int/lit8 v2, p3, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    aget v2, p0, v0

    mul-float/2addr v2, p1

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object p2
.end method
