.class public Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;
.super Landroid/widget/ImageView;
.source "DrawerDividerView.java"


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mMargin:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/settings/R$styleable;->DrawDividerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->brief_popup_list_divider_point_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mSize:I

    .line 43
    sget p2, Lcom/android/settings/R$styleable;->DrawDividerView_margin:I

    .line 44
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->brief_popup_list_divider_point_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mMargin:I

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->list_divider_shape:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 48
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 50
    iget v3, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mMargin:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 51
    iget v0, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mSize:I

    invoke-virtual {v2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 52
    invoke-static {p2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 53
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 69
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 71
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
