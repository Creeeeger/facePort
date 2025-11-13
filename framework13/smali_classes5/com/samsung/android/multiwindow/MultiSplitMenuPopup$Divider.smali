.class public Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;
.super Landroid/view/View;
.source "MultiSplitMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Divider"
.end annotation


# static fields
.field private static final blacklist COLOR_DARK:I = 0x1ffafafa

.field private static final blacklist COLOR_LIGHT:I = 0x33444444

.field private static final blacklist WIDTH:I = 0x2


# instance fields
.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->mWidth:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 820
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setFitsSystemWindows(Z)V

    .line 822
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 837
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->mHeight:I

    .line 838
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 837
    invoke-super {p0, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 839
    return-void
.end method

.method public blacklist setProperties(ZII)V
    .locals 9
    .param p1, "isNightMode"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 825
    iput p2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->mWidth:I

    .line 826
    iput p3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->mHeight:I

    .line 827
    if-eqz p1, :cond_0

    const v0, 0x1ffafafa

    goto :goto_0

    :cond_0
    const v0, 0x33444444

    .line 828
    .local v0, "color":I
    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-direct {v2, v1, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 831
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v1, p2, -0x2

    div-int/lit8 v7, v1, 0x2

    .line 832
    .local v7, "inset":I
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move v3, v7

    move v5, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 833
    return-void
.end method
