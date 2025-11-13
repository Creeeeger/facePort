.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final blacklist BADGE_LIMIT_NUMBER:I = 0x63

.field private static final blacklist TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private blacklist mBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mBadgeView:Landroid/widget/TextView;

.field private blacklist mCheckBox:Landroid/widget/CheckBox;

.field private blacklist mContent:Landroid/widget/LinearLayout;

.field private blacklist mForceShowIcon:Z

.field private blacklist mGroupDivider:Landroid/widget/ImageView;

.field private blacklist mHasListDivider:Z

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mIsDeviceDefaultLight:Z

.field private blacklist mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private blacklist mMenuType:I

.field private blacklist mNumberFormat:Ljava/text/NumberFormat;

.field private blacklist mPreserveIconSpacing:Z

.field private blacklist mRadioButton:Landroid/widget/RadioButton;

.field private blacklist mShortcutView:Landroid/widget/TextView;

.field private blacklist mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private blacklist mSubMenuArrowView:Landroid/widget/ImageView;

.field private blacklist mTextAppearance:I

.field private blacklist mTextAppearanceContext:Landroid/content/Context;

.field private blacklist mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    const v0, 0x10104f2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    .line 88
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 91
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 92
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 94
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 96
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 97
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v2, [I

    const v5, 0x1010129

    aput v5, v4, v0

    .line 100
    const/4 v5, 0x0

    const v6, 0x101006d

    invoke-virtual {v3, v5, v4, v6, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 102
    .local v3, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 104
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 109
    .local v4, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11200b9

    invoke-virtual {v5, v6, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 110
    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    .line 111
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v5, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200ba

    invoke-virtual {v6, v7, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    .line 115
    .end local v5    # "colorValue":Landroid/util/TypedValue;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mNumberFormat:Ljava/text/NumberFormat;

    .line 117
    return-void
.end method

.method private blacklist addContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 179
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 180
    return-void
.end method

.method private blacklist addContentView(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 183
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 188
    :goto_0
    return-void
.end method

.method private blacklist getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private blacklist insertBadge()V
    .locals 3

    .line 475
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 476
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090167

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 477
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 478
    return-void
.end method

.method private blacklist insertCheckBox()V
    .locals 3

    .line 350
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 353
    const v1, 0x1090168

    .line 354
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 356
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 358
    :cond_0
    const v1, 0x10900b3

    .line 359
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method private blacklist insertIconView()V
    .locals 3

    .line 326
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 327
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x10900b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 329
    invoke-direct {p0, v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;I)V

    .line 330
    return-void
.end method

.method private blacklist insertRadioButton()V
    .locals 3

    .line 333
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 335
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsDeviceDefaultLight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 336
    const v1, 0x1090169

    .line 337
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 339
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 341
    :cond_0
    const v1, 0x10900b6

    .line 342
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addContentView(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method private blacklist isNumericValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 463
    return v0

    .line 467
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    nop

    .line 471
    const/4 v0, 0x1

    return v0

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private blacklist setBadgeText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertBadge()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 438
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ListMenuItemView;->isNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 440
    .local v1, "badgeNumber":I
    const/16 v2, 0x63

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 442
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "localeFormattedNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050351

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 446
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050350

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 447
    .local v3, "badgeWidth":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 449
    .local v4, "badgeHeight":I
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 450
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 451
    const v5, 0x800015

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 452
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    .end local v1    # "badgeNumber":I
    .end local v2    # "localeFormattedNumber":Ljava/lang/String;
    .end local v3    # "badgeWidth":I
    .end local v4    # "badgeHeight":I
    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050402

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 455
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    return-void
.end method

.method private blacklist setSubMenuArrowVisible(Z)V
    .locals 2
    .param p1, "hasSubmenu"    # Z

    .line 269
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 270
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 420
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 426
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 428
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public blacklist getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public blacklist initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 4
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 150
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 151
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 155
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 160
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBadgeText(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 170
    .local v1, "textSize":I
    if-eqz v1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 173
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "textSize":I
    :cond_2
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 3

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 131
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 134
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 139
    :cond_0
    const v0, 0x10205a8

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 140
    const v0, 0x10205f2

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 141
    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_1
    const v0, 0x102032e

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 146
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 147
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 383
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 391
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 393
    .local v0, "customContentDescription":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 397
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c47

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "badgeContentDescription":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 404
    .end local v0    # "customContentDescription":Ljava/lang/CharSequence;
    .end local v1    # "badgeContentDescription":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 314
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 317
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    .local v1, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 319
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 322
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 323
    return-void
.end method

.method public blacklist prefersCondensedTitle()Z
    .locals 1

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .line 209
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 223
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .local v1, "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_0

    .line 225
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 229
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 232
    .restart local v1    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_7

    .line 233
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 235
    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move v3, v2

    .line 236
    .local v3, "newVisibility":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 241
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 244
    .end local v3    # "newVisibility":I
    :cond_6
    goto :goto_2

    .line 245
    :cond_7
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    :cond_8
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 248
    :cond_9
    :goto_2
    return-void
.end method

.method public blacklist setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0

    .line 259
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 265
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 266
    return-void
.end method

.method public blacklist setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .line 191
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 192
    return-void
.end method

.method public blacklist setGroupDividerEnabled(Z)V
    .locals 2
    .param p1, "groupDividerEnabled"    # Z

    .line 412
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 413
    nop

    .line 414
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mHasListDivider:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 413
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    :cond_1
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 289
    .local v0, "showIcon":Z
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    .line 290
    return-void

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_3

    .line 294
    return-void

    .line 297
    :cond_3
    if-nez v2, :cond_4

    .line 298
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 301
    :cond_4
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 308
    :cond_5
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 302
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    move-object v3, p1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :cond_8
    :goto_4
    return-void
.end method

.method public blacklist setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 278
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_2
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist showsIcon()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
