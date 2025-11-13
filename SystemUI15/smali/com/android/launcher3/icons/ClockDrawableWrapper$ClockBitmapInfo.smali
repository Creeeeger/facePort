.class public final Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;
.super Lcom/android/launcher3/icons/BitmapInfo;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field public final boundsOffset:F

.field public final mFlattenedBackground:Landroid/graphics/Bitmap;

.field public final themeBackground:Landroid/graphics/Bitmap;

.field public final themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p3

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const p2, 0x3d0f5c29    # 0.035f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->boundsOffset:F

    iput-object p4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iput-object p5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iput-object p7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeBackground:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final clone()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 9

    new-instance v8, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->boundsOffset:F

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v2

    iget-object v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeBackground:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    iget-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget-object v6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v0, v8, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v0, v8, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iput v0, v8, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object p0, v8, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    return-object v8
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public final newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 13

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeData:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    if-eqz v1, :cond_0

    sget v2, Lcom/android/launcher3/icons/ThemedIconDrawable;->$r8$clinit:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060a8b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f060a8c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    filled-new-array {v3, v2}, [I

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->copyForIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->themeBackground:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/BlendModeColorFilter;

    const/4 v5, 0x0

    aget v2, v2, v5

    sget-object v5, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    :goto_0
    move v8, v0

    move-object v10, v1

    move-object v11, v3

    move-object v12, v4

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->mFlattenedBackground:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->animInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    const/4 v0, -0x1

    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    if-nez v10, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;

    iget-object v6, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    iget v9, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;->boundsOffset:F

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable$ClockConstantState;-><init>(Landroid/graphics/Bitmap;IIFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/launcher3/icons/BitmapInfo;->applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    return-object v0
.end method
