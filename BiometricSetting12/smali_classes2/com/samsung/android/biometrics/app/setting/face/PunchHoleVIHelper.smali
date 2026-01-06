.class public Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;
.super Ljava/lang/Object;
.source "PunchHoleVIHelper.java"


# instance fields
.field private mCameraLocPercent:Landroid/graphics/PointF;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDm:Landroid/hardware/display/DisplayManager;

.field private mFaceVISizePercent:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070092

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070093

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700e6

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700e7

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mCameraLocPercent:Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mFaceVISizePercent:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public getPunchHoleVIRect()Landroid/graphics/Rect;
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mCameraLocPercent:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mFaceVISizePercent:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_1
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v7, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v7, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
