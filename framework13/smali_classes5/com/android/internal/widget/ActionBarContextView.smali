.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private blacklist mClose:Landroid/view/View;

.field private blacklist mCloseItemLayout:I

.field private blacklist mCustomView:Landroid/view/View;

.field private blacklist mIsSetOpenTheme:Z

.field private blacklist mMaxFontScale:F

.field private blacklist mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mSubtitleStyleRes:I

.field private blacklist mSubtitleView:Landroid/widget/TextView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleLayout:Landroid/widget/LinearLayout;

.field private blacklist mTitleOptional:Z

.field private blacklist mTitleStyleRes:I

.field private blacklist mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mMaxFontScale:F

    .line 92
    sget-object v0, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 98
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 104
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 107
    const/4 v3, 0x5

    const v4, 0x1090024

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 112
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200b9

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 115
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    .line 116
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsSetOpenTheme:Z

    .line 121
    .end local v3    # "outValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x1080868

    if-ne v2, v3, :cond_2

    .line 124
    const v1, 0x1080b83

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x1080869

    if-ne v1, v2, :cond_3

    .line 128
    const v1, 0x1080b84

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void
.end method

.method private blacklist initTitle()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 250
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 252
    const v2, 0x10201c0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 253
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10201bf

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 254
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 257
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 262
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 266
    .local v0, "hasTitle":Z
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 267
    .local v1, "hasSubtitle":Z
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 272
    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist closeMode()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 357
    return-void

    .line 360
    :cond_0
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 399
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 404
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist hideOverflowMenu()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initForMode(Landroid/view/ActionMode;)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 279
    :cond_1
    :goto_0
    nop

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v1, 0x10201c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, "closeButton":Landroid/view/View;
    new-instance v1, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    new-instance v1, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 325
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 328
    :cond_2
    new-instance v2, Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 329
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 331
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 333
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 334
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 335
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 336
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 340
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 340
    invoke-virtual {v4, v6, v3}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 343
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 345
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 349
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    :goto_2
    return-void
.end method

.method public blacklist isOverflowMenuShowing()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTitleOptional()Z
    .locals 1

    .line 602
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public blacklist killMode()V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 368
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 369
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 140
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->ActionMode:[I

    const v3, 0x1010394

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 147
    .local v1, "height":I
    if-ltz v1, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 150
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsSetOpenTheme:Z

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x1080868

    if-ne v2, v3, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080b83

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 156
    :cond_1
    nop

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 160
    :cond_2
    nop

    .line 161
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "height":I
    :cond_3
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 1

    .line 170
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 175
    :cond_0
    return-void
.end method

.method public blacklist onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 583
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 585
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 592
    :goto_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 546
    move-object v6, p0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->isLayoutRtl()Z

    move-result v7

    .line 547
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    .line 548
    .local v0, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v8

    .line 549
    .local v8, "y":I
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 551
    .local v9, "contentHeight":I
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v10, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_3

    .line 552
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 553
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_1

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    move v12, v1

    .line 554
    .local v12, "startMargin":I
    if-eqz v7, :cond_2

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    move v13, v1

    .line 555
    .local v13, "endMargin":I
    invoke-static {v0, v12, v7}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v14

    .line 556
    .end local v0    # "x":I
    .local v14, "x":I
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    move v2, v14

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    .line 557
    invoke-static {v14, v13, v7}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v0

    move v11, v0

    .end local v14    # "x":I
    .restart local v0    # "x":I
    goto :goto_3

    .line 561
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    .end local v13    # "endMargin":I
    :cond_3
    move v11, v0

    .end local v0    # "x":I
    .local v11, "x":I
    :goto_3
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 562
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 565
    :cond_4
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 566
    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 569
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    goto :goto_4

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_4
    move v10, v0

    .line 571
    .end local v11    # "x":I
    .local v10, "x":I
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_7

    .line 572
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    xor-int/lit8 v5, v7, 0x1

    move-object v0, p0

    move v2, v10

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 574
    :cond_7
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 409
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 410
    .local v1, "widthMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1a

    .line 415
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 416
    .local v3, "heightMode":I
    if-eqz v3, :cond_19

    .line 421
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 423
    .local v4, "contentWidth":I
    iget v5, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v5, :cond_0

    .line 424
    iget v5, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 426
    .local v5, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 427
    .local v6, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 428
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 429
    .local v8, "height":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 431
    .local v10, "childSpecHeight":I
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v12, :cond_1

    .line 432
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v11, v7, v10, v13}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 433
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 434
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    sub-int/2addr v7, v14

    .line 437
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v11}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_2

    .line 438
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v11, v7, v10, v13}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 442
    :cond_2
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_10

    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v11, :cond_10

    .line 444
    iget-boolean v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsThemeDeviceDefaultFamily:Z

    const/4 v14, 0x1

    if-eqz v11, :cond_a

    .line 446
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    if-eqz v11, :cond_5

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v15, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v11, v15, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 449
    .local v2, "appearance":Landroid/content/res/TypedArray;
    nop

    .line 450
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 452
    .local v11, "value":Landroid/util/TypedValue;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 454
    iget v15, v11, Landroid/util/TypedValue;->data:I

    invoke-static {v15}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v15

    .line 455
    .local v15, "textSize":F
    iget-object v9, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 458
    .local v9, "fontScale":F
    iget v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mMaxFontScale:F

    cmpl-float v13, v9, v13

    if-lez v13, :cond_3

    .line 459
    iget v9, v0, Lcom/android/internal/widget/ActionBarContextView;->mMaxFontScale:F

    .line 461
    :cond_3
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    mul-float v12, v15, v9

    invoke-virtual {v13, v14, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    .end local v9    # "fontScale":F
    goto :goto_1

    .line 464
    :cond_4
    iget-object v9, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 469
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    .end local v11    # "value":Landroid/util/TypedValue;
    .end local v15    # "textSize":F
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v9, 0x8

    if-ne v2, v9, :cond_b

    goto :goto_2

    :cond_6
    const/16 v9, 0x8

    .line 470
    :goto_2
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    const v11, 0x10504be

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 471
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 472
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 473
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    nop

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 476
    .local v12, "contentInsetStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v13

    if-nez v13, :cond_7

    .line 477
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 479
    :cond_7
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 481
    :goto_3
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "contentInsetStart":I
    :cond_8
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 484
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 485
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 486
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    nop

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    .line 489
    .local v11, "contentInsetStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutDirection()I

    move-result v12

    if-nez v12, :cond_9

    .line 490
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 492
    :cond_9
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 494
    :goto_4
    iget-object v12, v0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 444
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "contentInsetStart":I
    :cond_a
    move v9, v12

    .line 499
    :cond_b
    :goto_5
    iget-boolean v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v2, :cond_f

    .line 500
    const/4 v2, 0x0

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v11

    .line 502
    .local v11, "titleWidthSpec":I
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 503
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 504
    .local v2, "titleWidth":I
    if-gt v2, v7, :cond_c

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    :goto_6
    move v12, v14

    .line 505
    .local v12, "titleFits":Z
    if-eqz v12, :cond_d

    .line 506
    sub-int/2addr v7, v2

    .line 508
    :cond_d
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_e

    const/4 v9, 0x0

    :cond_e
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    .end local v2    # "titleWidth":I
    .end local v11    # "titleWidthSpec":I
    .end local v12    # "titleFits":Z
    goto :goto_7

    .line 510
    :cond_f
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v7, v10, v9}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 514
    :cond_10
    :goto_7
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 515
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 516
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v9, v11, :cond_11

    .line 517
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_8

    :cond_11
    const/high16 v9, -0x80000000

    .line 518
    .local v9, "customWidthMode":I
    :goto_8
    iget v12, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v12, :cond_12

    .line 519
    iget v12, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_9

    :cond_12
    move v12, v7

    .line 520
    .local v12, "customWidth":I
    :goto_9
    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v13, v11, :cond_13

    .line 521
    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_a

    :cond_13
    const/high16 v16, -0x80000000

    :goto_a
    move/from16 v11, v16

    .line 522
    .local v11, "customHeightMode":I
    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v13, :cond_14

    .line 523
    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_b

    :cond_14
    move v13, v8

    .line 524
    .local v13, "customHeight":I
    :goto_b
    iget-object v14, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 525
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .local v16, "widthMode":I
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 524
    invoke-virtual {v14, v15, v1}, Landroid/view/View;->measure(II)V

    goto :goto_c

    .line 514
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "customWidthMode":I
    .end local v11    # "customHeightMode":I
    .end local v12    # "customWidth":I
    .end local v13    # "customHeight":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_15
    move/from16 v16, v1

    .line 528
    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    :goto_c
    iget v1, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v1, :cond_18

    .line 529
    const/4 v1, 0x0

    .line 530
    .local v1, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    .line 531
    .local v2, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d
    if-ge v9, v2, :cond_17

    .line 532
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 533
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 534
    .local v12, "paddedViewHeight":I
    if-le v12, v1, :cond_16

    .line 535
    move v1, v12

    .line 531
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 538
    .end local v9    # "i":I
    :cond_17
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 539
    .end local v1    # "measuredHeight":I
    .end local v2    # "count":I
    goto :goto_e

    .line 540
    :cond_18
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 542
    :goto_e
    return-void

    .line 417
    .end local v4    # "contentWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "verticalPadding":I
    .end local v7    # "availableWidth":I
    .end local v8    # "height":I
    .end local v10    # "childSpecHeight":I
    .end local v16    # "widthMode":I
    .local v1, "widthMode":I
    :cond_19
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    .end local v3    # "heightMode":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_1a
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 211
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 212
    return-void
.end method

.method public blacklist setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 219
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 223
    :cond_1
    if-eqz p1, :cond_2

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 227
    return-void
.end method

.method public blacklist setSplitToolbar(Z)V
    .locals 5
    .param p1, "split"    # Z

    .line 179
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_4

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 184
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 188
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 192
    invoke-virtual {v1, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 197
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 200
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 208
    :cond_4
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 235
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 236
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 237
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 230
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 231
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 232
    return-void
.end method

.method public blacklist setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 595
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 598
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 599
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showOverflowMenu()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 376
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
