.class public final Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

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
.method public final clone()Ljava/lang/Object;
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

.method public final newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    sget v2, Lcom/android/launcher3/icons/ThemedIconDrawable;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060aff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f060b00

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    filled-new-array {v3, v2}, [I

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;

    aget v4, v2, v0

    aget v2, v2, v1

    invoke-direct {v3, p0, v4, v2}, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedConstantState;-><init>(Lcom/android/launcher3/icons/BitmapInfo;II)V

    invoke-virtual {v3}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->newDrawable()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    :goto_0
    sget-object v3, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    const v3, 0x7f0401f8

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput v4, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    iput p2, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mCreationFlags:I

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_d

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    or-int/lit8 v3, v3, 0x4

    :cond_4
    invoke-virtual {p2, p1, v3}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    :cond_6
    move-object p0, v4

    goto :goto_2

    :cond_7
    iget p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_8

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p2, 0x7f08046b

    const v0, 0x7f060074

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_2

    :cond_8
    and-int/lit8 p2, p0, 0x1

    if-eqz p2, :cond_9

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p2, 0x7f0806ac

    const v0, 0x7f060076

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_2

    :cond_9
    and-int/lit8 p2, p0, 0x4

    if-eqz p2, :cond_a

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p2, 0x7f0803ba

    const v0, 0x7f060073

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    goto :goto_2

    :cond_a
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    new-instance p0, Lcom/android/launcher3/icons/UserBadgeDrawable;

    const p2, 0x7f080576

    const v0, 0x7f060075

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/launcher3/icons/UserBadgeDrawable;-><init>(Landroid/content/Context;IIZ)V

    :goto_2
    if-eqz p0, :cond_d

    iget-object p1, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iput-object p0, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget-object p1, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    sget v0, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    const v0, 0x3ee353f8    # 0.444f

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p0, p2

    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    :cond_d
    return-object v2
.end method
