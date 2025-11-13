.class public final Lcom/android/launcher3/icons/ThemedIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field public final colorBg:I

.field public final colorFg:I

.field public final mBgBitmap:Landroid/graphics/Bitmap;

.field public final mBgFilter:Landroid/graphics/ColorFilter;

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mMonoFilter:Landroid/graphics/ColorFilter;

.field public final mMonoIcon:Landroid/graphics/Bitmap;

.field public final mMonoPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;)V
    .locals 6

    iget-object v0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorFg:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iget v3, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorBg:I

    iput v3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorBg:I

    iget p1, p1, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;->colorFg:I

    iput p1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    iget-object v4, v1, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoIcon:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/BlendModeColorFilter;

    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v4, p1, v5}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v4, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p1, v1, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {p1, v3, v5}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object p1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public final drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoIcon:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 3

    new-instance v0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->bitmapInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iget v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorBg:I

    iget p0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;-><init>(Lcom/android/launcher3/icons/BitmapInfo;II)V

    return-object v0
.end method

.method public final updateFilter()V
    .locals 5

    invoke-super {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    iget v3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorBg:I

    invoke-static {v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mBgFilter:Landroid/graphics/ColorFilter;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    iget p0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->colorFg:I

    invoke-static {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColor(I)I

    move-result p0

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v1, p0, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;->mMonoFilter:Landroid/graphics/ColorFilter;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
