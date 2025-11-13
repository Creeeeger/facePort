.class Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;
.super Landroid/widget/FrameLayout;
.source "OverflowMenuPopupForDeX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuButton"
.end annotation


# instance fields
.field private blacklist mHeight:I

.field private blacklist mSideWidth:I

.field private blacklist mTextView:Landroid/widget/TextView;

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetProperties(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setProperties(III)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mSideWidth:I

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setFitsSystemWindows(Z)V

    .line 221
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 225
    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 227
    :cond_0
    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    :goto_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    .line 230
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 231
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 232
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 233
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFitsSystemWindows(Z)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method private blacklist setProperties(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "padding"    # I

    .line 251
    iput p1, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mWidth:I

    iput p2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mHeight:I

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p3, v0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setPadding(IIII)V

    .line 253
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 257
    iget v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mHeight:I

    .line 258
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 257
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 259
    return-void
.end method

.method public blacklist resolveLayoutDirection()Z
    .locals 4

    .line 239
    invoke-super {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    move-result v0

    .line 240
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 242
    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 244
    :cond_0
    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return v0
.end method
