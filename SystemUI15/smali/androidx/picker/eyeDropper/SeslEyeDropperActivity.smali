.class public Landroidx/picker/eyeDropper/SeslEyeDropperActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mOnColorPickListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;


# instance fields
.field public mBitmapView:Landroid/widget/ImageView;

.field public mImageBitmap:Landroid/graphics/Bitmap;

.field public mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

.field public mPointerView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishAfterTransition()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finishAfterTransition()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final handleColorPicked(I)V
    .locals 2

    sget-object v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mOnColorPickListener:Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/picker3/app/SeslColorPickerDialog$$ExternalSyntheticLambda0;->f$0:Landroidx/picker3/app/SeslColorPickerDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    sput-object v1, Landroidx/picker/eyeDropper/SeslBitmapHolder;->sBitmapWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroidx/picker3/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    iget-object v0, v0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iput-object p1, v1, Landroidx/picker3/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker;->updateRecentColorLayout()V

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->finishAfterTransition()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    iget-object v0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->handleColorPicked(I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->handleColorPicked(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v3, 0x200

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0023

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0a3e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    const p1, 0x7f0a066e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/eyeDropper/SeslMagnifyingView;

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    const p1, 0x7f0a08f6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    new-instance v3, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07123f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v4, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    const-string v7, "scaleX"

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    const-string v9, "scaleY"

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    new-array v10, v2, [F

    fill-array-data v10, :array_2

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    new-array v10, v2, [F

    fill-array-data v10, :array_3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    int-to-float p1, p1

    new-array v10, v2, [F

    aput v6, v10, v1

    aput p1, v10, v0

    const-string/jumbo p1, "translationY"

    invoke-static {v9, p1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v9, 0x190

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v7, v6, v1

    aput-object v8, v6, v0

    aput-object v4, v6, v2

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object p1, v6, v0

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$1;

    invoke-direct {p1, p0}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$1;-><init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    new-instance v0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final positionMagnifierAndPointer(III)V
    .locals 6

    iget-object v0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    int-to-float p1, p1

    int-to-float v1, p2

    iput p1, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mTouchPosX:F

    iput v1, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mTouchPosY:F

    iput p3, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderColor:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    int-to-double p2, p2

    iget-object v0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    cmpg-double p2, p2, v2

    const p3, 0x7f071240

    const/high16 v0, 0x40000000    # 2.0f

    if-gtz p2, :cond_0

    iget-object p2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v2, p3

    invoke-virtual {p2, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    iget-object v2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget-object v3, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v2, p3

    sub-float p3, v1, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setY(F)V

    :goto_0
    iget-object p2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mMagnifyingView:Landroidx/picker/eyeDropper/SeslMagnifyingView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    sub-float p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setX(F)V

    iget-object p2, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    iget-object p0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mPointerView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method
