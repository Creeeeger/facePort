.class public final synthetic Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object p0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    sget-object v0, Landroidx/picker/eyeDropper/SeslBitmapHolder;->sBitmapWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mOnColorPickListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    if-eqz v0, :cond_3

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v7, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v6, v8

    const/4 v8, 0x0

    invoke-static {v0, v7, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    iput-object v4, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    iget-object v3, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    new-instance v4, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0, v1, v2}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;-><init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;III)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
