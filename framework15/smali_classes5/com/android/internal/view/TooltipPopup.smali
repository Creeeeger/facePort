.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private greylist-max-o mContentView:Landroid/view/View;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mIsCaptionMenuButton:Z

.field private blacklist mIsCaptionPopupButton:Z

.field private final blacklist mIsDeviceDefault:Z

.field private blacklist mIsDexMode:Z

.field private blacklist mIsDexStandAlone:Z

.field private blacklist mIsNewDexMode:Z

.field private blacklist mLastOrientation:I

.field private final greylist-max-o mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mMessageView:Landroid/widget/TextView;

.field private final blacklist mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final greylist-max-o mTmpAnchorPos:[I

.field private final greylist-max-o mTmpAppPos:[I

.field private final greylist-max-o mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$1ouZ0og0lJt6VvW6QESaHQY37cY(Lcom/android/internal/view/TooltipPopup;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/view/TooltipPopup;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    new-instance v1, Lcom/android/internal/view/TooltipPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/view/TooltipPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/TooltipPopup;)V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsNewDexMode:Z

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200ef

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090189

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10901b6

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/view/TooltipPopup;->mLastOrientation:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const v2, 0x1040f43

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x103031d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private greylist-max-o computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10505b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iget-boolean v0, v7, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    move v10, v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lt v0, v9, :cond_1

    move/from16 v0, p2

    move v10, v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    move v10, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v9, :cond_2

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10505af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int v2, p3, v0

    sub-int v0, p3, v0

    move v11, v0

    move v12, v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v0, 0x0

    move v11, v0

    move v12, v2

    :goto_1
    const/16 v0, 0x31

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p4, :cond_3

    const v2, 0x10505b3

    goto :goto_2

    :cond_3
    const v2, 0x10505b2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    const-string v2, "TooltipPopup"

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_4
    const-string v1, "Cannot find app view"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move-object v14, v0

    :goto_3
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "left inset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v0

    goto :goto_4

    :cond_6
    move/from16 v16, v0

    :goto_4
    new-array v6, v1, [I

    invoke-virtual {v14, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v6, v3

    const/4 v5, 0x1

    aget v1, v6, v5

    aget v17, v6, v3

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v3, v17, v18

    aget v17, v6, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v5, v17, v18

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v1, v16

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v14, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame left : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame right : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame top : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame bottom : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - anchorView locationOnScreen x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - anchorView locationOnScreen y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - appView locationOnScreen x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - appView locationOnScreen y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-boolean v0, v7, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->semUpdateMaxWidth()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v3, p4

    move v4, v10

    move-object/from16 v17, v5

    move/from16 v5, v16

    move-object/from16 v18, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/TooltipPopup;->semComputePositionForMultiWindow(Landroid/view/View;Landroid/graphics/Rect;ZIILandroid/view/WindowManager$LayoutParams;)V

    goto :goto_5

    :cond_8
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/2addr v0, v10

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v2, v11

    sub-int/2addr v2, v13

    sub-int/2addr v2, v1

    iget-object v4, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v4, v3

    add-int/2addr v3, v12

    add-int/2addr v3, v13

    if-eqz p4, :cond_a

    if-ltz v2, :cond_9

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    :cond_9
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    :cond_a
    add-int v4, v3, v1

    iget-object v5, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v4, v5, :cond_b

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    :cond_b
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_5
    return-void
.end method

.method private blacklist isEmbedded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isEmbedded()Z

    move-result v0

    return v0
.end method

.method private blacklist isFreeForm()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isFullScreen()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist isSplitWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/view/TooltipPopup;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/internal/view/TooltipPopup;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    return-void
.end method

.method private blacklist semComputePositionForMultiWindow(Landroid/view/View;Landroid/graphics/Rect;ZIILandroid/view/WindowManager$LayoutParams;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v4, v4}, Landroid/view/View;->measure(II)V

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x2

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050474

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    :cond_0
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    iget-boolean v15, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v15, :cond_5

    const-class v15, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v9, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string v6, "display"

    invoke-virtual {v9, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    if-eqz v15, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v15}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v18

    const/16 v19, 0x0

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    move/from16 v21, v4

    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    goto :goto_0

    :cond_1
    move/from16 v21, v4

    :cond_2
    const-string v3, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v6, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    const/4 v4, 0x0

    aget-object v19, v3, v4

    if-eqz v19, :cond_3

    invoke-interface {v12}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v23, v4

    const v4, 0x1050577

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int v14, v19, v3

    goto :goto_1

    :cond_3
    move-object/from16 v22, v3

    goto :goto_1

    :cond_4
    move/from16 v21, v4

    :goto_1
    goto :goto_2

    :cond_5
    move/from16 v21, v4

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_2
    sub-int v3, v13, v8

    if-le v7, v3, :cond_6

    sub-int v7, v13, v8

    :cond_6
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isSplitWindow()Z

    move-result v4

    if-eqz v4, :cond_7

    if-le v7, v3, :cond_7

    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x105016f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    if-lt v3, v4, :cond_7

    move v7, v3

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isFreeForm()Z

    move-result v4

    const-string v6, "TooltipPopup"

    if-eqz v4, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isEmbedded()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "Add Flag FLAG_LAYOUT_NO_LIMITS for free form mode"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    :cond_8
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x201

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_3
    const/4 v4, 0x0

    const/4 v15, 0x0

    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/16 v19, 0x1

    if-eqz v18, :cond_e

    if-eqz p1, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isFreeForm()Z

    move-result v18

    if-nez v18, :cond_a

    move/from16 v18, v3

    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v3, :cond_b

    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsNewDexMode:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v22, v4

    move-object/from16 v23, v9

    goto :goto_7

    :cond_a
    move/from16 v18, v3

    :cond_b
    :goto_4
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v19

    sub-int/2addr v3, v5

    move/from16 v22, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_d

    move-object/from16 v23, v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Insets;->top:I

    if-le v3, v9, :cond_c

    move/from16 v24, v3

    goto :goto_5

    :cond_c
    sub-int v24, v3, v9

    :goto_5
    goto :goto_6

    :cond_d
    move-object/from16 v23, v9

    move/from16 v24, v3

    :goto_6
    move/from16 v3, v24

    goto :goto_8

    :cond_e
    move/from16 v18, v3

    move/from16 v22, v4

    move-object/from16 v23, v9

    :goto_7
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v19

    sub-int v24, v3, v5

    move/from16 v3, v24

    :goto_8
    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v4, v4, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    if-eqz p3, :cond_11

    iget-boolean v9, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v9, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v20, 0x0

    aget v9, v9, v20

    add-int v9, v9, p4

    sub-int/2addr v9, v7

    add-int/2addr v9, v8

    add-int v15, v9, v7

    move/from16 v22, v9

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v9, v9, v20

    add-int v9, v9, p4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v20

    add-int v20, v20, v7

    const/16 v16, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v9, v9, v20

    add-int/2addr v9, v8

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v9, v22

    goto :goto_9

    :cond_f
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v20, 0x0

    aget v9, v9, v20

    add-int v9, v9, p4

    sub-int/2addr v9, v8

    add-int v15, v9, v7

    move/from16 v22, v9

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v9, v9, v20

    add-int v9, v9, p4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v20

    sub-int v20, v20, v7

    const/16 v16, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v9, v9, v20

    sub-int/2addr v9, v8

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v9, v22

    :goto_9
    move/from16 v24, v8

    add-int v8, v4, v5

    move/from16 v16, v9

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_10

    iget-boolean v8, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-nez v8, :cond_10

    iget-boolean v8, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-nez v8, :cond_10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_a

    :cond_10
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_a
    move/from16 v9, v16

    move-object/from16 v16, v10

    goto :goto_c

    :cond_11
    move/from16 v24, v8

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int v8, v8, p4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v20

    const/16 v16, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v8, v8, v20

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v8, v8, v9

    add-int v8, v8, p4

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v9, :cond_12

    iget-boolean v9, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-eqz v9, :cond_12

    iget-boolean v9, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v9, :cond_12

    add-int v9, v8, v7

    move-object/from16 v16, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_13

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v10, v9

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v8, v9

    move v9, v8

    goto :goto_b

    :cond_12
    move-object/from16 v16, v10

    :cond_13
    move v9, v8

    :goto_b
    add-int v15, v9, v7

    if-ltz v3, :cond_14

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    :cond_14
    add-int v8, v4, v5

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-gt v8, v10, :cond_15

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    :cond_15
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    if-ltz v8, :cond_16

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    :cond_16
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_c
    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v15

    sub-int/2addr v10, v13

    move/from16 v20, v4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v9

    iget v9, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v14

    const/4 v9, 0x0

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getRotation()I

    move-result v1

    move/from16 v25, v9

    const/4 v9, 0x3

    move-object/from16 v26, v11

    if-ne v1, v9, :cond_17

    if-eqz p5, :cond_18

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10502cb

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v10, v9

    goto :goto_d

    :cond_17
    if-nez v1, :cond_18

    iget-boolean v9, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v9, :cond_18

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10502c9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    add-int/2addr v4, v9

    goto :goto_d

    :cond_18
    move/from16 v9, v25

    :goto_d
    iget-boolean v11, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v11, :cond_19

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v25, v1

    const v1, 0x1050577

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    add-int/2addr v4, v9

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v11, 0x20000

    or-int/2addr v1, v11

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const-string v1, "Add Flag SEM_EXTENSION_FLAG_FORCE_TRUSTED_OVERLAY for DexMode"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_19
    move/from16 v25, v1

    :goto_e
    iget-boolean v1, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x10502c9

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    add-int/2addr v4, v9

    :cond_1a
    move v1, v8

    if-gez v1, :cond_1b

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v11, v1

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_f

    :cond_1b
    if-lez v10, :cond_1c

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v11, v10

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1c
    :goto_f
    if-lez v4, :cond_1d

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1d
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v11, :cond_1f

    iget-boolean v11, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-eqz v11, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    if-eqz v11, :cond_1e

    move/from16 v17, v1

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v4

    iget-object v4, v11, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, v11, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_10

    :cond_1e
    move/from16 v17, v1

    move/from16 v27, v4

    goto :goto_10

    :cond_1f
    move/from16 v17, v1

    move/from16 v27, v4

    :goto_10
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v1, v1, v19

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    if-le v1, v14, :cond_20

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_20
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v7, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v5, :cond_21

    if-lez v10, :cond_23

    :cond_21
    invoke-interface {v12}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iget v11, v4, Landroid/graphics/Insets;->top:I

    if-lt v3, v11, :cond_22

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_22
    const-string v11, "Add Flag FLAG_LAYOUT_NO_LIMITS for small window"

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v5, :cond_24

    const-string v1, "Add Flag LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME for small height window"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_11

    :cond_24
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_11
    return-void
.end method

.method private blacklist semUpdateMaxWidth()V
    .locals 6

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050419

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    float-to-int v1, v3

    :cond_1
    :goto_0
    move v3, v1

    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    :cond_2
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public greylist-max-o isShowing()Z
    .locals 1

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

.method public blacklist semShowActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public blacklist setForCaptionMenuButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    return-void
.end method

.method public blacklist setForCaptionPopupButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    return-void
.end method

.method public greylist-max-o show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "TooltipPopup"

    const-string/jumbo v1, "show - anchorView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopModeStandAlone()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isNewDexMode()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsNewDexMode:Z

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_5

    if-nez p4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    iget-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :cond_8
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
