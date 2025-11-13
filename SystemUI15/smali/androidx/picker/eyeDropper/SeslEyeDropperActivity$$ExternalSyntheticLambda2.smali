.class public final synthetic Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    iput p2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    iget v1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$2:I

    iget p0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda2;->f$3:I

    iget-object v3, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    iget-object v4, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    iget-object v4, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    iget-object v5, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    int-to-float v5, v1

    int-to-float v6, v2

    iput-object v4, v3, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iput v5, v3, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mTouchPosX:F

    iput v6, v3, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mTouchPosY:F

    iput p0, v3, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderColor:I

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-object p0, v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->positionMagnifierAndPointer(III)V

    return-void
.end method
