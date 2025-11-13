.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropDownAdapter;,
        Landroid/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_ITEMS_MEASURED:I = 0xf

.field public static final whitelist MODE_DIALOG:I = 0x0

.field public static final whitelist MODE_DROPDOWN:I = 0x1

.field private static final greylist-max-o MODE_THEME:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private blacklist mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDisableChildrenWhenDisabled:Z

.field greylist-max-o mDropDownWidth:I

.field private blacklist mDropdownHorizontalOffset:I

.field private greylist mForwardingListener:Landroid/widget/ForwardingListener;

.field private greylist-max-o mGravity:I

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private greylist mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private final greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDropdownHorizontalOffset(Landroid/widget/Spinner;)I
    .locals 0

    iget p0, p0, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/Spinner;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;
    .locals 0

    iget-object p0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 148
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 160
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 176
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 177
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .line 198
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .line 226
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V

    .line 227
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I
    .param p6, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .line 259
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {p0 .. p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 119
    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    .line 121
    iput v13, v7, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    .line 261
    sget-object v0, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 263
    .local v14, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Spinner;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 266
    if-eqz v12, :cond_0

    .line 267
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v8, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, v7, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {v14, v0, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 270
    .local v0, "popupThemeResId":I
    if-eqz v0, :cond_1

    .line 271
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v8, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, v7, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 273
    :cond_1
    iput-object v8, v7, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 277
    .end local v0    # "popupThemeResId":I
    :goto_0
    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_2

    .line 278
    const/4 v0, 0x5

    invoke-virtual {v14, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v6, v0

    .end local p5    # "mode":I
    .local v0, "mode":I
    goto :goto_1

    .line 277
    .end local v0    # "mode":I
    .restart local p5    # "mode":I
    :cond_2
    move v6, v1

    .line 282
    .end local p5    # "mode":I
    .local v6, "mode":I
    :goto_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    move-object v15, v0

    .line 283
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x11200b9

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v15, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 284
    iget v0, v15, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_2
    iput-boolean v0, v7, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/Spinner;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 288
    const/4 v4, 0x3

    const/4 v3, 0x0

    packed-switch v6, :pswitch_data_0

    move-object v1, v3

    goto :goto_3

    .line 296
    :pswitch_0
    new-instance v16, Landroid/widget/Spinner$DropdownPopup;

    iget-object v2, v7, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move v13, v4

    move/from16 v4, p3

    move v13, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 298
    .local v0, "popup":Landroid/widget/Spinner$DropdownPopup;
    iget-object v1, v7, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {v1, v9, v2, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 300
    .local v1, "pa":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 302
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner$DropdownPopup;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {v8, v9, v2, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 313
    .local v2, "pb":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v7, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    .line 315
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    iput-object v0, v7, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 319
    new-instance v3, Landroid/widget/Spinner$1;

    invoke-direct {v3, v7, v7, v0}, Landroid/widget/Spinner$1;-><init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V

    iput-object v3, v7, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    .line 333
    const/4 v1, 0x0

    goto :goto_3

    .line 290
    .end local v0    # "popup":Landroid/widget/Spinner$DropdownPopup;
    .end local v1    # "pa":Landroid/content/res/TypedArray;
    .end local v2    # "pb":Landroid/content/res/TypedArray;
    :pswitch_1
    new-instance v0, Landroid/widget/Spinner$DialogPopup;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$DialogPopup-IA;)V

    iput-object v0, v7, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 291
    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 292
    nop

    .line 337
    :goto_3
    const/16 v0, 0x11

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v7, Landroid/widget/Spinner;->mGravity:I

    .line 338
    const/16 v0, 0x8

    invoke-virtual {v14, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 341
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    iget-object v0, v7, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_5

    .line 346
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 347
    iput-object v1, v7, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 349
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist enableShowButtonBackground(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 665
    iget-boolean v0, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    if-nez v0, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 669
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 670
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 672
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private greylist-max-o makeView(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .line 765
    iget-boolean v0, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 767
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 769
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    .line 771
    return-object v0

    .line 776
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 779
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;Z)V

    .line 781
    return-object v0
.end method

.method private blacklist semGetCurrentContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 943
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 944
    return v0

    .line 946
    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 947
    .local v1, "widthMeasureSpec":I
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 949
    .local v0, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 950
    .local v2, "itemView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_1

    .line 951
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    :cond_1
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 957
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 959
    .local v3, "width":I
    if-eqz p2, :cond_2

    .line 960
    iget-object v4, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 961
    iget-object v4, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 963
    :cond_2
    return v3
.end method

.method private greylist-max-o setUpChild(Landroid/view/View;Z)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 796
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 800
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 802
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 803
    iget-boolean v1, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    :cond_1
    iget v1, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 810
    .local v1, "childHeightSpec":I
    iget v2, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v3, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 814
    .local v2, "childWidthSpec":I
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 820
    iget-object v3, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 821
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 823
    .local v3, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 825
    .local v4, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 826
    .local v5, "width":I
    const/4 v6, 0x0

    .line 827
    .local v6, "childLeft":I
    add-int v7, v6, v5

    .line 829
    .local v7, "childRight":I
    invoke-virtual {p1, v6, v3, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 831
    if-nez p2, :cond_2

    .line 832
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->removeViewInLayout(Landroid/view/View;)V

    .line 834
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 860
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .locals 3

    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 591
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_0
    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 593
    invoke-direct {p0, v2, v2}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 594
    iget-object v1, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 597
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 598
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 599
    .local v2, "childBaseline":I
    if-ltz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v2

    :cond_2
    return v1

    .line 601
    .end local v2    # "childBaseline":I
    :cond_3
    return v1
.end method

.method public whitelist getDropDownHorizontalOffset()I
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownVerticalOffset()I
    .locals 1

    .line 429
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownWidth()I
    .locals 1

    .line 494
    iget v0, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .locals 1

    .line 534
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    return v0
.end method

.method public whitelist getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPopupContext()Landroid/content/Context;
    .locals 1

    .line 355
    iget-object v0, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 894
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isPopupShowing()Z
    .locals 1

    .line 404
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o layout(IZ)V
    .locals 9
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .line 697
    iget-object v0, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 698
    .local v0, "childrenLeft":I
    iget v1, p0, Landroid/widget/Spinner;->mRight:I

    iget v2, p0, Landroid/widget/Spinner;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 700
    .local v1, "childrenWidth":I
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 705
    :cond_0
    iget v2, p0, Landroid/widget/Spinner;->mItemCount:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v2, :cond_1

    goto :goto_1

    .line 710
    :cond_1
    iget v2, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v2, :cond_2

    .line 711
    iget v2, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 714
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 717
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 720
    iget v2, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/Spinner;->mFirstPosition:I

    .line 722
    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_3

    .line 723
    iget v2, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/widget/Spinner;->makeView(IZ)Landroid/view/View;

    move-result-object v2

    .line 724
    .local v2, "sel":Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/Spinner;->enableShowButtonBackground(Landroid/view/View;)V

    .line 725
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 726
    .local v3, "width":I
    move v4, v0

    .line 727
    .local v4, "selectedOffset":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getLayoutDirection()I

    move-result v5

    .line 728
    .local v5, "layoutDirection":I
    iget v6, p0, Landroid/widget/Spinner;->mGravity:I

    invoke-static {v6, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 729
    .local v6, "absoluteGravity":I
    and-int/lit8 v7, v6, 0x7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 734
    :sswitch_0
    add-int v7, v0, v1

    sub-int v4, v7, v3

    goto :goto_0

    .line 731
    :sswitch_1
    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v0

    div-int/lit8 v8, v3, 0x2

    sub-int v4, v7, v8

    .line 732
    nop

    .line 737
    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 741
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "width":I
    .end local v4    # "selectedOffset":I
    .end local v5    # "layoutDirection":I
    .end local v6    # "absoluteGravity":I
    :cond_3
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 743
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 745
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 747
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    .line 748
    iput-boolean v2, p0, Landroid/widget/Spinner;->mNeedSync:Z

    .line 749
    iget v2, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    .line 750
    return-void

    .line 706
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 707
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist-max-o measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 12
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 898
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 899
    return v0

    .line 902
    :cond_0
    const/4 v1, 0x0

    .line 903
    .local v1, "width":I
    const/4 v2, 0x0

    .line 904
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 905
    .local v3, "itemType":I
    nop

    .line 906
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 907
    .local v4, "widthMeasureSpec":I
    nop

    .line 908
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .line 912
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 913
    .local v6, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 914
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 915
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 916
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 917
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 918
    .local v9, "positionType":I
    if-eq v9, v3, :cond_1

    .line 919
    move v3, v9

    .line 920
    const/4 v2, 0x0

    .line 922
    :cond_1
    invoke-interface {p1, v6, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 924
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    :cond_2
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 929
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 916
    .end local v9    # "positionType":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 933
    .end local v6    # "i":I
    :cond_3
    if-eqz p2, :cond_4

    .line 934
    iget-object v6, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 935
    iget-object v6, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v9

    add-int/2addr v1, v6

    .line 938
    :cond_4
    return v1
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 854
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 855
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 856
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 607
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 609
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 612
    :cond_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 866
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 868
    iget-object v0, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 869
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 871
    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 683
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Spinner;->layout(IZ)V

    .line 686
    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 687
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 645
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 646
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 647
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 651
    .local v0, "measuredWidth":I
    iget-boolean v1, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 652
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Spinner;->semGetCurrentContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .local v1, "contentWidth":I
    goto :goto_0

    .line 654
    .end local v1    # "contentWidth":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 657
    .restart local v1    # "contentWidth":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 658
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 657
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 659
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v3

    .line 657
    invoke-virtual {p0, v2, v3}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 661
    .end local v0    # "measuredWidth":I
    .end local v1    # "contentWidth":I
    :cond_1
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1003
    invoke-virtual {p0}, Landroid/widget/Spinner;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 1006
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 976
    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner$SavedState;

    .line 978
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 980
    iget-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    if-eqz v1, :cond_0

    .line 981
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 982
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 983
    new-instance v2, Landroid/widget/Spinner$2;

    invoke-direct {v2, p0}, Landroid/widget/Spinner$2;-><init>(Landroid/widget/Spinner;)V

    .line 995
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 998
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_0
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 969
    new-instance v0, Landroid/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 970
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 971
    return-object v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 636
    iget-object v0, p0, Landroid/widget/Spinner;->mForwardingListener:Landroid/widget/ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist performClick()Z
    .locals 4

    .line 838
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 840
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 843
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->playSoundEffect(I)V

    .line 845
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 849
    :cond_0
    return v0
.end method

.method public whitelist semDismissPopup()V
    .locals 1

    .line 1016
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 1019
    :cond_0
    return-void
.end method

.method public whitelist semSetDropDownHeight(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 1031
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v1, :cond_0

    .line 1032
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown height for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void

    .line 1035
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHeight(I)V

    .line 1036
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 77
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 567
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-nez v0, :cond_0

    .line 568
    iput-object p1, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 569
    return-void

    .line 572
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 574
    iget-object v0, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 576
    iget-object v0, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 577
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 578
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 579
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Spinner adapter view type count must be 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Spinner;->mPopupContext:Landroid/content/Context;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/Spinner;->mContext:Landroid/content/Context;

    .line 583
    .local v1, "popupContext":Landroid/content/Context;
    :cond_3
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v3, Landroid/widget/Spinner$DropDownAdapter;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    return-void
.end method

.method public whitelist setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 442
    iput p1, p0, Landroid/widget/Spinner;->mDropdownHorizontalOffset:I

    .line 444
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 445
    return-void
.end method

.method public whitelist setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 416
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 417
    return-void
.end method

.method public whitelist setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 474
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 475
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 478
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 479
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 499
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    .line 500
    iget-boolean v0, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    .line 502
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 503
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 517
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 518
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 519
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 521
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    .line 522
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 524
    :cond_1
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 623
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 631
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 632
    return-void
.end method

.method public whitelist setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v1, :cond_0

    .line 368
    const-string v0, "Spinner"

    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 371
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    return-void
.end method

.method public whitelist setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 383
    invoke-virtual {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public whitelist setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 878
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 879
    return-void
.end method

.method public whitelist setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .line 886
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 887
    return-void
.end method
