.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHECKED_STATE_SET:[I


# instance fields
.field private greylist-max-o mBasePadding:I

.field private blacklist mCheckMarkBlendMode:Landroid/graphics/BlendMode;

.field private greylist mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mCheckMarkGravity:I

.field private blacklist mCheckMarkHeight:I

.field private greylist-max-o mCheckMarkResource:I

.field private greylist-max-o mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mCheckMarkWidth:I

.field private greylist-max-o mChecked:Z

.field private blacklist mDrawablePadding:I

.field private greylist-max-o mHasCheckMarkTint:Z

.field private greylist-max-o mHasCheckMarkTintMode:Z

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mIsSetCheckMark:Z

.field private greylist-max-o mNeedRequestlayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 67
    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 69
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 73
    const v1, 0x800005

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 79
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsSetCheckMark:Z

    .line 82
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    .line 104
    sget-object v2, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 106
    .local v2, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/CheckedTextView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 112
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v5, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200b9

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 114
    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    .line 115
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050518

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/CheckedTextView;->mDrawablePadding:I

    .line 119
    if-eqz v4, :cond_1

    .line 120
    invoke-virtual {p0, v4}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_1
    iget-boolean v6, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_2

    .line 125
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mIsSetCheckMark:Z

    .line 126
    const v1, 0x800003

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 133
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    const/4 v6, -0x1

    invoke-virtual {v2, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v6, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v1, v6}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 137
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 140
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 141
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 142
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 145
    :cond_4
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 146
    .local v0, "checked":Z
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 148
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 151
    return-void
.end method

.method private greylist-max-o applyCheckMarkTint()V
    .locals 2

    .line 352
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_3

    .line 353
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 359
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 365
    :cond_2
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 369
    :cond_3
    return-void
.end method

.method private greylist-max-o isCheckMarkAtStart()Z
    .locals 3

    .line 456
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 457
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 458
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private greylist-max-o setBasePadding(Z)V
    .locals 1
    .param p1, "checkmarkAtStart"    # Z

    .line 448
    if-eqz p1, :cond_0

    .line 449
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0

    .line 451
    :cond_0
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 453
    :goto_0
    return-void
.end method

.method private greylist-max-o setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .line 215
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 222
    if-eqz p1, :cond_4

    .line 223
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 225
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 228
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 229
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 231
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkHeight:I

    .line 236
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 238
    :cond_4
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 241
    :goto_2
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    iput p2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 244
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 248
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 249
    return-void
.end method

.method private greylist-max-o updatePadding()V
    .locals 5

    .line 426
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 429
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mIsSetCheckMark:Z

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/CheckedTextView;->mDrawablePadding:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .local v0, "newPadding":I
    :goto_0
    goto :goto_1

    .line 432
    .end local v0    # "newPadding":I
    :cond_1
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 434
    .restart local v0    # "newPadding":I
    :goto_1
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 435
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 436
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    goto :goto_4

    .line 438
    :cond_4
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 439
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    .line 441
    :goto_4
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_6

    .line 442
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 443
    iput-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 445
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 541
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 543
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 546
    :cond_0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    .line 530
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 532
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 533
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    :cond_0
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 633
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 634
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "text:checked"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 635
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 550
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getCheckMarkTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 283
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    .line 333
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 416
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    .line 417
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 645
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 650
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isSingleLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/CheckedTextView;->invalidate(IIII)V

    .line 654
    .end local v0    # "dirty":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public whitelist isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 160
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 383
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 385
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 388
    :cond_0
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 521
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 522
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 525
    :cond_0
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 463
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 465
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 466
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 471
    .local v1, "verticalGravity":I
    iget-boolean v2, p0, Landroid/widget/CheckedTextView;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    .line 472
    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkHeight:I

    .local v2, "height":I
    goto :goto_0

    .line 476
    .end local v2    # "height":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 479
    .restart local v2    # "height":I
    :goto_0
    const/4 v3, 0x0

    .line 481
    .local v3, "y":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 483
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int v3, v4, v2

    .line 484
    goto :goto_1

    .line 486
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v3, v4, 0x2

    .line 490
    :goto_1
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v4

    .line 491
    .local v4, "checkMarkAtStart":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v5

    .line 492
    .local v5, "width":I
    move v6, v3

    .line 493
    .local v6, "top":I
    add-int v7, v6, v2

    .line 496
    .local v7, "bottom":I
    if-eqz v4, :cond_1

    .line 497
    iget v8, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 498
    .local v8, "left":I
    iget v9, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v9, v8

    .local v9, "right":I
    goto :goto_2

    .line 500
    .end local v8    # "left":I
    .end local v9    # "right":I
    :cond_1
    iget v8, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    sub-int v9, v5, v8

    .line 501
    .restart local v9    # "right":I
    iget v8, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v8, v9, v8

    .line 504
    .restart local v8    # "left":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 505
    iget v10, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v10, v8

    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v9

    invoke-virtual {v0, v10, v6, v11, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 507
    :cond_2
    invoke-virtual {v0, v8, v6, v9, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 513
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    .line 514
    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v8

    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v9

    invoke-virtual {v10, v11, v6, v12, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 517
    .end local v1    # "verticalGravity":I
    .end local v2    # "height":I
    .end local v3    # "y":I
    .end local v4    # "checkMarkAtStart":Z
    .end local v5    # "width":I
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 618
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 619
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 620
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 625
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 626
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 627
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 628
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 608
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView$SavedState;

    .line 610
    .local v0, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 611
    iget-boolean v1, v0, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 612
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 613
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 421
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 422
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    .line 423
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 598
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 600
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/CheckedTextView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 602
    .local v1, "ss":Landroid/widget/CheckedTextView$SavedState;
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CheckedTextView$SavedState;->checked:Z

    .line 603
    return-object v1
.end method

.method public whitelist setCheckMarkDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 191
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 196
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 197
    return-void
.end method

.method public whitelist setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    .line 212
    return-void
.end method

.method public whitelist setCheckMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/BlendMode;

    .line 314
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkBlendMode:Landroid/graphics/BlendMode;

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 317
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 318
    return-void
.end method

.method public whitelist setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 267
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 270
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 271
    return-void
.end method

.method public whitelist setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 300
    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 170
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 171
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 172
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 374
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 377
    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 379
    :cond_1
    return-void
.end method

.method public whitelist toggle()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 155
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 392
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
