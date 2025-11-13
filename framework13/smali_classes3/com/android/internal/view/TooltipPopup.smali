.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private blacklist mAppBoundForMenuButton:Landroid/graphics/Rect;

.field private final greylist-max-o mContentView:Landroid/view/View;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIsDeviceDefault:Z

.field private blacklist mIsDexMode:Z

.field private blacklist mIsDexStandAlone:Z

.field private final greylist-max-o mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mMessageView:Landroid/widget/TextView;

.field private final greylist-max-o mTmpAnchorPos:[I

.field private final greylist-max-o mTmpAppPos:[I

.field private final greylist-max-o mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 62
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 63
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    .line 74
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mAppBoundForMenuButton:Landroid/graphics/Rect;

    .line 78
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 81
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 82
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200b9

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    .line 85
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 86
    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    iget v1, v2, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 94
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109017e

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10901ad

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 97
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const v2, 0x1040e22

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 103
    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 104
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 107
    const v1, 0x1030314

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 108
    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    return-void
.end method

.method private greylist-max-o computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 38
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 207
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050514

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 211
    .local v3, "tooltipPreciseAnchorThreshold":I
    iget-boolean v4, v0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    const/4 v5, 0x2

    if-nez v4, :cond_1

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v4, v3, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    move/from16 v4, p2

    .local v4, "offsetX":I
    goto :goto_1

    .line 213
    .end local v4    # "offsetX":I
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v5

    .line 221
    .restart local v4    # "offsetX":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lt v6, v3, :cond_2

    .line 223
    iget-object v6, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050513

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 225
    .local v6, "offsetExtra":I
    add-int v7, p3, v6

    .line 226
    .local v7, "offsetBelow":I
    sub-int v6, p3, v6

    .line 227
    .local v6, "offsetAbove":I
    goto :goto_2

    .line 229
    .end local v6    # "offsetAbove":I
    .end local v7    # "offsetBelow":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 230
    .restart local v7    # "offsetBelow":I
    const/4 v6, 0x0

    .line 233
    .restart local v6    # "offsetAbove":I
    :goto_2
    const/16 v8, 0x31

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 235
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 236
    if-eqz p4, :cond_3

    const v9, 0x1050517

    goto :goto_3

    .line 237
    :cond_3
    const v9, 0x1050516

    .line 235
    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 240
    .local v8, "tooltipOffset":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v9

    .line 241
    .local v9, "appView":Landroid/view/View;
    const-string v10, "TooltipPopup"

    if-nez v9, :cond_5

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    .line 243
    .local v11, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v11, :cond_4

    .line 244
    invoke-virtual {v11}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v9

    goto :goto_4

    .line 246
    :cond_4
    const-string v5, "Cannot find app view"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    .end local v11    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_5
    :goto_4
    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 252
    const/4 v11, 0x0

    .line 253
    .local v11, "leftInset":I
    invoke-virtual {v9}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    .line 254
    .local v12, "insets":Landroid/view/WindowInsets;
    if-eqz v12, :cond_6

    .line 255
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v11

    .line 256
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "left inset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6
    new-array v13, v5, [I

    .line 261
    .local v13, "appViewScreenPos":[I
    invoke-virtual {v9, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 264
    instance-of v14, v1, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    const/4 v5, 0x0

    if-eqz v14, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isSplitWindow()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    move v14, v5

    .line 265
    .local v14, "isMenuButtonInSplitWindow":Z
    :goto_5
    if-eqz v14, :cond_8

    .line 266
    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mAppBoundForMenuButton:Landroid/graphics/Rect;

    move/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v23, v13

    .local v15, "displayFrame":Landroid/graphics/Rect;
    goto :goto_6

    .line 269
    .end local v15    # "displayFrame":Landroid/graphics/Rect;
    :cond_8
    new-instance v15, Landroid/graphics/Rect;

    move/from16 v18, v3

    .end local v3    # "tooltipPreciseAnchorThreshold":I
    .local v18, "tooltipPreciseAnchorThreshold":I
    aget v3, v13, v5

    move-object/from16 v19, v12

    const/16 v17, 0x1

    .end local v12    # "insets":Landroid/view/WindowInsets;
    .local v19, "insets":Landroid/view/WindowInsets;
    aget v12, v13, v17

    aget v20, v13, v5

    .line 270
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v5, v20, v21

    aget v20, v13, v17

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v21

    move-object/from16 v23, v13

    .end local v13    # "appViewScreenPos":[I
    .local v23, "appViewScreenPos":[I
    add-int v13, v20, v21

    invoke-direct {v15, v3, v12, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .restart local v15    # "displayFrame":Landroid/graphics/Rect;
    :goto_6
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v5, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v11

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 273
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v5, v15, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 277
    if-eqz v14, :cond_9

    .line 278
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    iget v5, v15, Landroid/graphics/Rect;->left:I

    const/4 v12, 0x0

    aput v5, v3, v12

    .line 279
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x1

    aput v5, v3, v12

    goto :goto_7

    .line 282
    :cond_9
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v9, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 285
    :goto_7
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 287
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_a

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - displayFrame left : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - displayFrame right : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - displayFrame top : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - displayFrame bottom : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - anchorView locationOnScreen x : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - anchorView locationOnScreen y : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - appView locationOnScreen x : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computePosition - appView locationOnScreen y : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_a
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v5, 0x0

    aget v12, v3, v5

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v20, v13, v5

    sub-int v12, v12, v20

    aput v12, v3, v5

    .line 300
    const/4 v12, 0x1

    aget v17, v3, v12

    aget v13, v13, v12

    sub-int v17, v17, v13

    aput v17, v3, v12

    .line 303
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 304
    .local v3, "spec":I
    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v3, v3}, Landroid/view/View;->measure(II)V

    .line 305
    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 307
    .local v5, "tooltipHeight":I
    const/4 v12, 0x0

    .line 308
    .local v12, "yAbove":I
    const/4 v13, 0x0

    .line 310
    .local v13, "yBelow":I
    move/from16 v20, v3

    .end local v3    # "spec":I
    .local v20, "spec":I
    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v3, :cond_28

    .line 311
    const/4 v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 312
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 313
    .local v3, "tooltipWidth":I
    move-object/from16 v21, v9

    .end local v9    # "appView":Landroid/view/View;
    .local v21, "appView":Landroid/view/View;
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v24, v12

    .end local v12    # "yAbove":I
    .local v24, "yAbove":I
    const v12, 0x10503ed

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 316
    .local v9, "tooltipHorizontalPadding":I
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 317
    .local v12, "applicationContext":Landroid/content/Context;
    if-nez v12, :cond_b

    .line 318
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 321
    :cond_b
    new-instance v25, Landroid/util/DisplayMetrics;

    invoke-direct/range {v25 .. v25}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v26, v25

    .line 322
    .local v26, "realMetrics":Landroid/util/DisplayMetrics;
    move/from16 v25, v13

    .end local v13    # "yBelow":I
    .local v25, "yBelow":I
    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    move/from16 v27, v7

    .end local v7    # "offsetBelow":I
    .local v27, "offsetBelow":I
    const-string/jumbo v7, "window"

    invoke-virtual {v13, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 323
    .local v13, "windowManager":Landroid/view/WindowManager;
    move/from16 v28, v8

    .end local v8    # "tooltipOffset":I
    .local v28, "tooltipOffset":I
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    move-object/from16 v29, v13

    move-object/from16 v13, v26

    .end local v26    # "realMetrics":Landroid/util/DisplayMetrics;
    .local v13, "realMetrics":Landroid/util/DisplayMetrics;
    .local v29, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {v8, v13}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, "screenWidth":I
    const/16 v26, 0x0

    .line 328
    .local v26, "screenHeight":I
    move/from16 v30, v8

    .end local v8    # "screenWidth":I
    .local v30, "screenWidth":I
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 330
    .local v7, "wm":Landroid/view/WindowManager;
    iget-boolean v8, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    move/from16 v31, v6

    .end local v6    # "offsetAbove":I
    .local v31, "offsetAbove":I
    if-eqz v8, :cond_10

    .line 331
    const-class v8, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v12, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 333
    .local v8, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    const-string v6, "display"

    invoke-virtual {v12, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 336
    .local v6, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v8, :cond_f

    if-eqz v6, :cond_f

    .line 337
    invoke-virtual {v8}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v32

    .line 338
    .local v32, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    const/16 v33, 0x0

    .line 340
    .local v33, "displays":[Landroid/view/Display;
    if-eqz v32, :cond_c

    move-object/from16 v34, v8

    .end local v8    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .local v34, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v8

    move-object/from16 v35, v12

    .end local v12    # "applicationContext":Landroid/content/Context;
    .local v35, "applicationContext":Landroid/content/Context;
    const/16 v12, 0x65

    if-ne v8, v12, :cond_d

    .line 341
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v8

    .end local v33    # "displays":[Landroid/view/Display;
    .local v8, "displays":[Landroid/view/Display;
    goto :goto_8

    .line 340
    .end local v34    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local v35    # "applicationContext":Landroid/content/Context;
    .local v8, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .restart local v12    # "applicationContext":Landroid/content/Context;
    .restart local v33    # "displays":[Landroid/view/Display;
    :cond_c
    move-object/from16 v34, v8

    move-object/from16 v35, v12

    .line 343
    .end local v8    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local v12    # "applicationContext":Landroid/content/Context;
    .restart local v34    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .restart local v35    # "applicationContext":Landroid/content/Context;
    :cond_d
    const-string v8, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v6, v8}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v8

    .line 346
    .end local v33    # "displays":[Landroid/view/Display;
    .local v8, "displays":[Landroid/view/Display;
    :goto_8
    if-eqz v8, :cond_e

    array-length v12, v8

    if-lez v12, :cond_e

    const/4 v12, 0x0

    aget-object v33, v8, v12

    if-eqz v33, :cond_e

    .line 347
    invoke-interface {v7}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 348
    .local v12, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 349
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v33

    move-object/from16 v36, v6

    .end local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v36, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v6, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v37, v8

    const v8, 0x10504db

    .end local v8    # "displays":[Landroid/view/Display;
    .local v37, "displays":[Landroid/view/Display;
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int v26, v33, v6

    move/from16 v8, v30

    goto :goto_a

    .line 346
    .end local v12    # "maxBounds":Landroid/graphics/Rect;
    .end local v36    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v37    # "displays":[Landroid/view/Display;
    .restart local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v8    # "displays":[Landroid/view/Display;
    :cond_e
    move-object/from16 v36, v6

    move-object/from16 v37, v8

    .end local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v8    # "displays":[Landroid/view/Display;
    .restart local v36    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v37    # "displays":[Landroid/view/Display;
    goto :goto_9

    .line 336
    .end local v32    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .end local v34    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local v35    # "applicationContext":Landroid/content/Context;
    .end local v36    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v37    # "displays":[Landroid/view/Display;
    .restart local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v8, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .local v12, "applicationContext":Landroid/content/Context;
    :cond_f
    move-object/from16 v36, v6

    move-object/from16 v34, v8

    move-object/from16 v35, v12

    .line 354
    .end local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v8    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local v12    # "applicationContext":Landroid/content/Context;
    .restart local v35    # "applicationContext":Landroid/content/Context;
    :goto_9
    move/from16 v8, v30

    .end local v30    # "screenWidth":I
    .local v8, "screenWidth":I
    :goto_a
    move/from16 v6, v26

    goto :goto_b

    .line 356
    .end local v8    # "screenWidth":I
    .end local v35    # "applicationContext":Landroid/content/Context;
    .restart local v12    # "applicationContext":Landroid/content/Context;
    .restart local v30    # "screenWidth":I
    :cond_10
    move-object/from16 v35, v12

    .end local v12    # "applicationContext":Landroid/content/Context;
    .restart local v35    # "applicationContext":Landroid/content/Context;
    iget v8, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 357
    .end local v30    # "screenWidth":I
    .restart local v8    # "screenWidth":I
    iget v6, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 361
    .end local v26    # "screenHeight":I
    .local v6, "screenHeight":I
    :goto_b
    sub-int v12, v8, v9

    if-le v3, v12, :cond_11

    .line 362
    sub-int v3, v8, v9

    .line 366
    :cond_11
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v12, v9

    .line 367
    .local v12, "appWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isSplitWindow()Z

    move-result v26

    if-eqz v26, :cond_12

    if-le v3, v12, :cond_12

    move/from16 v26, v3

    .end local v3    # "tooltipWidth":I
    .local v26, "tooltipWidth":I
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v30, v13

    .end local v13    # "realMetrics":Landroid/util/DisplayMetrics;
    .local v30, "realMetrics":Landroid/util/DisplayMetrics;
    const v13, 0x1050132

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    if-lt v12, v3, :cond_13

    .line 371
    move v3, v12

    .end local v26    # "tooltipWidth":I
    .restart local v3    # "tooltipWidth":I
    goto :goto_c

    .line 367
    .end local v30    # "realMetrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "realMetrics":Landroid/util/DisplayMetrics;
    :cond_12
    move/from16 v26, v3

    move-object/from16 v30, v13

    .line 376
    .end local v3    # "tooltipWidth":I
    .end local v13    # "realMetrics":Landroid/util/DisplayMetrics;
    .restart local v26    # "tooltipWidth":I
    .restart local v30    # "realMetrics":Landroid/util/DisplayMetrics;
    :cond_13
    move/from16 v3, v26

    .end local v26    # "tooltipWidth":I
    .restart local v3    # "tooltipWidth":I
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isFreeForm()Z

    move-result v13

    if-nez v13, :cond_14

    .line 381
    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, -0x201

    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_d

    .line 378
    :cond_14
    const-string v13, "Add Flag FLAG_LAYOUT_NO_LIMITS for free form mode"

    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v13, v13, 0x200

    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 385
    :goto_d
    const/4 v13, 0x0

    .line 386
    .local v13, "popupLeftPosX":I
    const/16 v26, 0x0

    .line 387
    .local v26, "popupRightPosX":I
    move/from16 v32, v12

    .end local v12    # "appWidth":I
    .local v32, "appWidth":I
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v17, 0x1

    aget v12, v12, v17

    move/from16 v33, v13

    .end local v13    # "popupLeftPosX":I
    .local v33, "popupLeftPosX":I
    sub-int v13, v12, v5

    .line 388
    .end local v24    # "yAbove":I
    .local v13, "yAbove":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    add-int v12, v12, v24

    .line 389
    .end local v25    # "yBelow":I
    .local v12, "yBelow":I
    if-eqz p4, :cond_17

    iget-boolean v1, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v1, :cond_17

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_15

    .line 392
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v22, 0x0

    aget v1, v1, v22

    add-int v24, v1, v4

    sub-int v24, v24, v3

    add-int v24, v24, v9

    .line 393
    .end local v33    # "popupLeftPosX":I
    .local v24, "popupLeftPosX":I
    add-int v25, v24, v3

    .line 394
    .end local v26    # "popupRightPosX":I
    .local v25, "popupRightPosX":I
    add-int/2addr v1, v4

    .line 395
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v26

    add-int v26, v26, v3

    const/16 v16, 0x2

    div-int/lit8 v26, v26, 0x2

    sub-int v1, v1, v26

    add-int/2addr v1, v9

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_e

    .line 397
    .end local v24    # "popupLeftPosX":I
    .end local v25    # "popupRightPosX":I
    .restart local v26    # "popupRightPosX":I
    .restart local v33    # "popupLeftPosX":I
    :cond_15
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v22, 0x0

    aget v1, v1, v22

    add-int v24, v1, v4

    sub-int v24, v24, v9

    .line 398
    .end local v33    # "popupLeftPosX":I
    .restart local v24    # "popupLeftPosX":I
    add-int v25, v24, v3

    .line 399
    .end local v26    # "popupRightPosX":I
    .restart local v25    # "popupRightPosX":I
    add-int/2addr v1, v4

    .line 400
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v26

    sub-int v26, v26, v3

    const/16 v16, 0x2

    div-int/lit8 v26, v26, 0x2

    sub-int v1, v1, v26

    sub-int/2addr v1, v9

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 403
    :goto_e
    add-int v1, v12, v5

    move/from16 v34, v9

    .end local v9    # "tooltipHorizontalPadding":I
    .local v34, "tooltipHorizontalPadding":I
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v1, v9, :cond_16

    .line 404
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_f

    .line 406
    :cond_16
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_f

    .line 389
    .end local v24    # "popupLeftPosX":I
    .end local v25    # "popupRightPosX":I
    .end local v34    # "tooltipHorizontalPadding":I
    .restart local v9    # "tooltipHorizontalPadding":I
    .restart local v26    # "popupRightPosX":I
    .restart local v33    # "popupLeftPosX":I
    :cond_17
    move/from16 v34, v9

    .line 409
    .end local v9    # "tooltipHorizontalPadding":I
    .restart local v34    # "tooltipHorizontalPadding":I
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v9, 0x0

    aget v1, v1, v9

    add-int/2addr v1, v4

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v22

    const/16 v16, 0x2

    div-int/lit8 v22, v22, 0x2

    sub-int v1, v1, v22

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 410
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v1, v1, v9

    add-int/2addr v1, v4

    div-int/lit8 v9, v3, 0x2

    sub-int v24, v1, v9

    .line 411
    .end local v33    # "popupLeftPosX":I
    .restart local v24    # "popupLeftPosX":I
    add-int v25, v24, v3

    .line 413
    .end local v26    # "popupRightPosX":I
    .restart local v25    # "popupRightPosX":I
    if-ltz v13, :cond_18

    .line 415
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_f

    .line 416
    :cond_18
    add-int v1, v12, v5

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-gt v1, v9, :cond_19

    .line 418
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_f

    .line 421
    :cond_19
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 422
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v13

    if-ltz v1, :cond_1a

    .line 425
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_f

    .line 428
    :cond_1a
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 433
    :goto_f
    iget v1, v15, Landroid/graphics/Rect;->left:I

    add-int v1, v24, v1

    .line 434
    .local v1, "tooltipLeftOutArea":I
    iget v9, v15, Landroid/graphics/Rect;->left:I

    add-int v9, v25, v9

    sub-int/2addr v9, v8

    .line 435
    .local v9, "tooltipRightOutArea":I
    move/from16 v16, v8

    .end local v8    # "screenWidth":I
    .local v16, "screenWidth":I
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v26, v12

    .end local v12    # "yBelow":I
    .local v26, "yBelow":I
    iget v12, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v12

    sub-int/2addr v8, v6

    .line 436
    .local v8, "tooltipBottomOutArea":I
    const/4 v12, 0x0

    .line 438
    .local v12, "navigationBarHeight":I
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v33

    move-object/from16 v36, v7

    .end local v7    # "wm":Landroid/view/WindowManager;
    .local v36, "wm":Landroid/view/WindowManager;
    invoke-virtual/range {v33 .. v33}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 439
    .local v7, "rotation":I
    move/from16 v33, v12

    .end local v12    # "navigationBarHeight":I
    .local v33, "navigationBarHeight":I
    const/4 v12, 0x3

    move/from16 v37, v4

    .end local v4    # "offsetX":I
    .local v37, "offsetX":I
    if-ne v7, v12, :cond_1b

    .line 441
    if-eqz v11, :cond_1c

    .line 442
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v4, 0x1050246

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 444
    .end local v33    # "navigationBarHeight":I
    .restart local v12    # "navigationBarHeight":I
    sub-int/2addr v1, v12

    .line 445
    sub-int/2addr v9, v12

    goto :goto_10

    .line 447
    .end local v12    # "navigationBarHeight":I
    .restart local v33    # "navigationBarHeight":I
    :cond_1b
    if-nez v7, :cond_1c

    iget-boolean v4, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v4, :cond_1c

    .line 448
    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x1050244

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 450
    .end local v33    # "navigationBarHeight":I
    .local v4, "navigationBarHeight":I
    add-int/2addr v8, v4

    move v12, v4

    goto :goto_10

    .line 454
    .end local v4    # "navigationBarHeight":I
    .restart local v33    # "navigationBarHeight":I
    :cond_1c
    move/from16 v12, v33

    .end local v33    # "navigationBarHeight":I
    .restart local v12    # "navigationBarHeight":I
    :goto_10
    iget-boolean v4, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v4, :cond_1d

    .line 455
    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v33, v7

    const v7, 0x10504db

    .end local v7    # "rotation":I
    .local v33, "rotation":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 457
    add-int/2addr v8, v12

    .line 459
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v7, 0x20000

    or-int/2addr v4, v7

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 460
    const-string v4, "Add Flag SEM_EXTENSION_FLAG_FORCE_TRUSTED_OVERLAY for DexMode"

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 454
    .end local v33    # "rotation":I
    .restart local v7    # "rotation":I
    :cond_1d
    move/from16 v33, v7

    .line 466
    .end local v7    # "rotation":I
    .restart local v33    # "rotation":I
    :goto_11
    iget-boolean v4, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    if-eqz v4, :cond_1e

    .line 467
    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1050244

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 469
    add-int/2addr v8, v12

    .line 474
    :cond_1e
    if-eqz v14, :cond_1f

    iget v4, v15, Landroid/graphics/Rect;->left:I

    goto :goto_12

    :cond_1f
    const/4 v4, 0x0

    :goto_12
    sub-int v4, v1, v4

    .line 475
    .local v4, "leftOffset":I
    if-gez v4, :cond_20

    .line 476
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v7, v4

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_13

    .line 478
    :cond_20
    if-lez v9, :cond_21

    .line 479
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v7, v9

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 482
    :cond_21
    :goto_13
    if-lez v8, :cond_22

    .line 483
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 487
    :cond_22
    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/16 v17, 0x1

    aget v7, v7, v17

    move/from16 v17, v1

    .end local v1    # "tooltipLeftOutArea":I
    .local v17, "tooltipLeftOutArea":I
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    if-le v7, v6, :cond_23

    .line 488
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 493
    :cond_23
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v3, :cond_24

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v5, :cond_24

    if-lez v9, :cond_25

    .line 495
    :cond_24
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 496
    const-string v1, "Add Flag FLAG_LAYOUT_NO_LIMITS for small window"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_25
    move-object/from16 v1, p1

    instance-of v7, v1, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;

    if-nez v7, :cond_27

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v7, v5, :cond_26

    goto :goto_14

    .line 505
    :cond_26
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v10, -0x10001

    and-int/2addr v7, v10

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_15

    .line 501
    :cond_27
    :goto_14
    const-string v7, "Add Flag LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME for small height window"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x10000

    or-int/2addr v7, v10

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 509
    .end local v3    # "tooltipWidth":I
    .end local v4    # "leftOffset":I
    .end local v6    # "screenHeight":I
    .end local v8    # "tooltipBottomOutArea":I
    .end local v9    # "tooltipRightOutArea":I
    .end local v12    # "navigationBarHeight":I
    .end local v16    # "screenWidth":I
    .end local v17    # "tooltipLeftOutArea":I
    .end local v24    # "popupLeftPosX":I
    .end local v25    # "popupRightPosX":I
    .end local v29    # "windowManager":Landroid/view/WindowManager;
    .end local v30    # "realMetrics":Landroid/util/DisplayMetrics;
    .end local v32    # "appWidth":I
    .end local v33    # "rotation":I
    .end local v34    # "tooltipHorizontalPadding":I
    .end local v35    # "applicationContext":Landroid/content/Context;
    .end local v36    # "wm":Landroid/view/WindowManager;
    :goto_15
    move/from16 v12, v26

    goto :goto_16

    .line 511
    .end local v21    # "appView":Landroid/view/View;
    .end local v26    # "yBelow":I
    .end local v27    # "offsetBelow":I
    .end local v28    # "tooltipOffset":I
    .end local v31    # "offsetAbove":I
    .end local v37    # "offsetX":I
    .local v4, "offsetX":I
    .local v6, "offsetAbove":I
    .local v7, "offsetBelow":I
    .local v8, "tooltipOffset":I
    .local v9, "appView":Landroid/view/View;
    .local v12, "yAbove":I
    .local v13, "yBelow":I
    :cond_28
    move/from16 v37, v4

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v21, v9

    move/from16 v24, v12

    move/from16 v25, v13

    .end local v4    # "offsetX":I
    .end local v6    # "offsetAbove":I
    .end local v7    # "offsetBelow":I
    .end local v8    # "tooltipOffset":I
    .end local v9    # "appView":Landroid/view/View;
    .end local v12    # "yAbove":I
    .end local v13    # "yBelow":I
    .restart local v21    # "appView":Landroid/view/View;
    .local v24, "yAbove":I
    .local v25, "yBelow":I
    .restart local v27    # "offsetBelow":I
    .restart local v28    # "tooltipOffset":I
    .restart local v31    # "offsetAbove":I
    .restart local v37    # "offsetX":I
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v4, 0x1

    aget v4, v3, v4

    add-int v6, v4, v31

    sub-int v6, v6, v28

    sub-int v13, v6, v5

    .line 512
    .end local v24    # "yAbove":I
    .local v13, "yAbove":I
    add-int v4, v4, v27

    add-int v12, v4, v28

    .line 514
    .end local v25    # "yBelow":I
    .local v12, "yBelow":I
    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v3, v3, v37

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v6, 0x2

    div-int/2addr v4, v6

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 516
    if-eqz p4, :cond_2a

    .line 517
    if-ltz v13, :cond_29

    .line 518
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_16

    .line 520
    :cond_29
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_16

    .line 526
    :cond_2a
    add-int v3, v12, v5

    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_2b

    .line 527
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_16

    .line 529
    :cond_2b
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 533
    :goto_16
    return-void
.end method

.method private blacklist isFreeForm()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 194
    .local v0, "windowMode":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isSplitWindow()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 198
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 179
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public greylist-max-o isShowing()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist semSetAppBoundForMenuButton(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 540
    if-eqz p1, :cond_0

    .line 541
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mAppBoundForMenuButton:Landroid/graphics/Rect;

    .line 543
    :cond_0
    return-void
.end method

.method public blacklist semShowActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layoutDirection"    # I
    .param p4, "tooltipText"    # Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 162
    if-nez p3, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 169
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method

.method public greylist-max-o show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string v0, "TooltipPopup"

    const-string/jumbo v1, "show - anchorView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 121
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    .line 122
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopModeStandAlone()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    .line 125
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v0

    .line 127
    .local v0, "hoverPopupType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 128
    return-void

    .line 132
    .end local v0    # "hoverPopupType":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 140
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method
