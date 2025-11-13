.class public Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mCreationFlags:I

.field public final mIconColor:I

.field public mIsDisabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mCreationFlags:I

    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIconColor:I

    return-void
.end method


# virtual methods
.method public createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 2

    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIconColor:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->createDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    iget-boolean v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    const v4, 0x3ee353f8    # 0.444f

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v4, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    :cond_4
    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mCreationFlags:I

    iput p0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mCreationFlags:I

    return-object v0
.end method
