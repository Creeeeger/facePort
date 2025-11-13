.class public Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;


# instance fields
.field public badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

.field public final color:I

.field public flags:I

.field public final icon:Landroid/graphics/Bitmap;

.field public mMono:Landroid/graphics/Bitmap;

.field public mWhiteShadowLayer:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    return-void
.end method


# virtual methods
.method public final applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    const v1, 0x7f0401ef

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    iput p3, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mCreationFlags:I

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_b

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move v3, v0

    :cond_1
    iget-object p3, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    if-eqz v3, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    invoke-virtual {p3, v1, p1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    :cond_4
    move-object p0, v2

    goto :goto_1

    :cond_5
    iget p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 p3, p0, 0x2

    if-eqz p3, :cond_6

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p3, 0x7f08096b

    const v0, 0x7f060042

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_1

    :cond_6
    and-int/lit8 p3, p0, 0x1

    if-eqz p3, :cond_7

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p3, 0x7f080b85

    const v0, 0x7f060044

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_1

    :cond_7
    and-int/lit8 p3, p0, 0x4

    if-eqz p3, :cond_8

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p3, 0x7f080866

    const v0, 0x7f060041

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_1

    :cond_8
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p3, 0x7f080a91

    const v0, 0x7f060043

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    :goto_1
    if-eqz p0, :cond_b

    iget-object p1, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    iput-object p0, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget-object p1, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    sget v0, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    const v0, 0x3ee353f8    # 0.444f

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, p3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p0, p3

    invoke-virtual {p1, v1, p3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    invoke-virtual {p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    :cond_b
    return-void
.end method

.method public clone()Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3

    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iput v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object p0, v0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget v1, Lcom/android/launcher3/icons/ThemedIconDrawable;->$r8$clinit:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060a8b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f060a8c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v0, v1, v0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;-><init>(Lcom/android/launcher3/icons/BitmapInfo;II)V

    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    :goto_0
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/launcher3/icons/BitmapInfo;->applyFlags(Landroid/content/Context;Lcom/android/launcher3/icons/FastBitmapDrawable;I)V

    return-object v0
.end method
