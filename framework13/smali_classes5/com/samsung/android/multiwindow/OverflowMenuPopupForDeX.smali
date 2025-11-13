.class public Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;
.super Landroid/widget/PopupWindow;
.source "OverflowMenuPopupForDeX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;
    }
.end annotation


# static fields
.field private static final blacklist BACKGROUND_RADIUS:I = 0x16

.field private static final blacklist BLUR_ALPHA:I = 0x80

.field private static final blacklist CAPTION_COLOR_DARK:I = -0xbbbbbc

.field private static final blacklist CAPTION_COLOR_LIGHT:I = -0x30304

.field private static final blacklist HEIGHT:I = 0x30

.field private static final blacklist OFFSET_X:I = 0x5

.field private static final blacklist OFFSET_Y:I = 0x1

.field private static final blacklist PADDING:I = 0x18

.field private static final blacklist POPUP_ALPHA:I = 0xcc

.field private static final blacklist TAG:Ljava/lang/String; = "OverflowMenuPopupForDeX"

.field private static final blacklist TEXT_COLOR_DARK:I = -0x50506

.field private static final blacklist TEXT_COLOR_LIGHT:I = -0xfefeff

.field private static final blacklist TEXT_SIZE:I = 0x10

.field private static final blacklist WIDTH:I = 0xb2


# instance fields
.field private blacklist mContentView:Landroid/view/ViewGroup;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field private blacklist mHeight:I

.field private blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mOffsetX:I

.field private blacklist mOffsetY:I

.field private blacklist mOwnerDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mPrimaryButtonContainer:Landroid/view/ViewGroup;

.field private blacklist mSecondaryButtonContainer:Landroid/view/ViewGroup;

.field private blacklist mShowAll:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/samsung/android/multiwindow/MultiSplitActions;Z[Landroid/view/View;Z)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorCaptionView"    # Lcom/android/internal/widget/DecorCaptionView;
    .param p3, "actions"    # Lcom/samsung/android/multiwindow/MultiSplitActions;
    .param p4, "isNightMode"    # Z
    .param p5, "buttons"    # [Landroid/view/View;
    .param p6, "allShow"    # Z

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    if-eqz p4, :cond_0

    .line 69
    const v3, 0x10304cf

    goto :goto_0

    .line 70
    :cond_0
    const v3, 0x10304b9

    .line 68
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    iput-object v1, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContext:Landroid/content/Context;

    .line 73
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 74
    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    .line 77
    iget-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x109016c

    .line 78
    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContentView:Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->setContentView(Landroid/view/View;)V

    .line 81
    iget-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x10202ae

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mPrimaryButtonContainer:Landroid/view/ViewGroup;

    .line 83
    iget-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContentView:Landroid/view/ViewGroup;

    const v8, 0x10202af

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mSecondaryButtonContainer:Landroid/view/ViewGroup;

    .line 86
    iget-object v7, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v7

    .line 87
    .local v7, "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    invoke-virtual {v7}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v8

    .line 88
    .local v8, "density":F
    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOffsetX:I

    .line 89
    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v10, v8, v9

    float-to-int v10, v10

    iput v10, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOffsetY:I

    .line 90
    const/high16 v10, 0x42400000    # 48.0f

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iput v10, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mHeight:I

    .line 91
    const/high16 v10, 0x43320000    # 178.0f

    mul-float/2addr v10, v8

    float-to-int v10, v10

    .line 92
    .local v10, "width":I
    const/high16 v11, 0x41c00000    # 24.0f

    mul-float/2addr v11, v8

    float-to-int v11, v11

    .line 93
    .local v11, "padding":I
    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->setWidth(I)V

    .line 95
    iget-object v12, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    .line 96
    if-eqz p4, :cond_1

    .line 97
    const v14, 0x103049d

    goto :goto_1

    .line 98
    :cond_1
    const v14, 0x103049e

    .line 95
    :goto_1
    invoke-virtual {v12, v4, v13, v5, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 99
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v12, 0xf

    .line 100
    invoke-virtual {v4, v12, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 99
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 101
    .local v12, "rippleColorList":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    if-eqz p4, :cond_2

    const v13, -0x50506

    goto :goto_2

    :cond_2
    const v13, -0xfefeff

    .line 103
    .local v13, "textColor":I
    :goto_2
    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v14, v8

    float-to-int v14, v14

    .line 104
    .local v14, "textSize":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "density="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " textSize="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "OverflowMenuPopupForDeX"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v15, v2

    if-ge v5, v15, :cond_5

    .line 107
    aget-object v15, v2, v5

    .line 108
    .local v15, "target":Landroid/view/View;
    iget-object v9, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;

    .line 109
    .local v1, "button":Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;
    iget v9, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mHeight:I

    invoke-static {v1, v10, v9, v11}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->-$$Nest$msetProperties(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;III)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/RippleDrawable;

    .line 112
    .local v9, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v9, :cond_3

    .line 113
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 115
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setEnabled(Z)V

    .line 117
    invoke-static {v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->-$$Nest$fgetmTextView(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_4

    .line 119
    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setEnabled(Z)V

    .line 120
    invoke-static {v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->-$$Nest$fgetmTextView(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 122
    :goto_4
    invoke-static {v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->-$$Nest$fgetmTextView(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    invoke-static {v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->-$$Nest$fgetmTextView(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v14

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .local v16, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    invoke-virtual {v15}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 125
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->-$$Nest$fgetmTextView(Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    .end local v1    # "button":Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX$MenuButton;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v9    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v15    # "target":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p5

    move-object/from16 v4, v16

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    .end local v16    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    :cond_5
    move-object/from16 v16, v4

    .line 130
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "i":I
    .restart local v16    # "a":Landroid/content/res/TypedArray;
    if-eqz p4, :cond_6

    const v1, -0xbbbbbc

    goto :goto_5

    :cond_6
    const v1, -0x30304

    .line 131
    .local v1, "backgroundColor":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 132
    .local v2, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    .line 134
    new-instance v3, Landroid/view/SemBlurInfo$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v4, 0x80

    .line 135
    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v3

    const/16 v4, 0xcc

    .line 136
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 137
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 136
    invoke-static {v4, v5, v9, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 138
    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v3

    .line 140
    .local v3, "blurInfo":Landroid/view/SemBlurInfo;
    iget-object v4, v0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 143
    move/from16 v4, p6

    invoke-direct {v0, v4}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->setShowAllItems(Z)V

    .line 144
    return-void
.end method

.method private blacklist setShowAllItems(Z)V
    .locals 7
    .param p1, "showAll"    # Z

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "visibleCount":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    .line 177
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mPrimaryButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mPrimaryButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 179
    iget-object v4, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mPrimaryButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, "button":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v5, v4}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isButtonVisible(Landroid/view/View;)Z

    move-result v5

    .line 181
    .local v5, "visible":Z
    if-eqz v5, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 182
    if-eqz v5, :cond_1

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 178
    .end local v4    # "button":Landroid/view/View;
    .end local v5    # "visible":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mPrimaryButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    :goto_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mSecondaryButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 190
    iget-object v4, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mSecondaryButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 191
    .restart local v4    # "button":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v5, v4}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isButtonVisible(Landroid/view/View;)Z

    move-result v5

    .line 192
    .restart local v5    # "visible":Z
    if-eqz v5, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 193
    if-eqz v5, :cond_5

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 189
    .end local v4    # "button":Landroid/view/View;
    .end local v5    # "visible":Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 197
    .end local v3    # "i":I
    :cond_6
    iget v1, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mHeight:I

    mul-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->setHeight(I)V

    .line 198
    return-void
.end method


# virtual methods
.method protected final blacklist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 148
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 149
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1040308

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OverflowMenuPopupForDeXOverflowPopup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    return-object v0
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->clickButton(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverflowMenuPopupForDeX"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist show()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    const/16 v1, 0x33

    iget v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOffsetX:I

    iget v3, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOwnerDecor:Lcom/android/internal/policy/DecorView;

    const/16 v1, 0x35

    iget v2, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOffsetX:I

    iget v3, p0, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->mOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverflowMenuPopupForDeX"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
