.class public final synthetic Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    sget-object p1, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mOnColorPickListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    if-ltz p1, :cond_2

    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge p1, v2, :cond_2

    int-to-float v2, v0

    iget-object v3, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->handleColorPicked(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0, v2}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->positionMagnifierAndPointer(III)V

    :cond_2
    :goto_0
    return v1
.end method
