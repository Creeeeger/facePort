.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final blacklist ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I = 0x2

.field private static final blacklist ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I = 0x1

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final blacklist HOVER_DETECT_TIME_MS_DEX:I = 0x2ee

.field private static final blacklist MSG_TIMEOUT:I = 0x1

.field private static final blacklist POPUP_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final blacklist TIMEOUT_DELAY:I = 0x7d0

.field public static final whitelist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_TOOLTIP:I = 0x1

.field public static final whitelist TYPE_USER_CUSTOM:I = 0x3

.field public static final whitelist TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final blacklist UI_THREAD_BUSY_TIME_MS:I = 0x3e8

.field private static final blacklist localLOGV:Z

.field private static final blacklist sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;


# instance fields
.field private blacklist mAnchorRect:Landroid/graphics/Rect;

.field private blacklist mAnchorView:Landroid/view/View;

.field protected blacklist mAnimationStyle:I

.field private blacklist mContentHeight:I

.field private blacklist mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected blacklist mContentText:Ljava/lang/CharSequence;

.field protected blacklist mContentView:Landroid/view/View;

.field private blacklist mContentWidth:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCoordinatesOfAnchorView:I

.field private blacklist mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private blacklist mDeviceRotation:I

.field private blacklist mDismissHandler:Landroid/os/Handler;

.field private blacklist mDismissTouchableHPWOnActionUp:Z

.field private blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mEnabled:Z

.field private blacklist mHashCodeForViewState:I

.field protected blacklist mHoverDetectTimeMS:I

.field private blacklist mHoverPaddingBottom:I

.field private blacklist mHoverPaddingLeft:I

.field private blacklist mHoverPaddingRight:I

.field private blacklist mHoverPaddingTop:I

.field private blacklist mHoveringPointX:I

.field private blacklist mHoveringPointY:I

.field private blacklist mIsCheckedRealDisplayMetricsInDexMode:Z

.field private blacklist mIsHoverPaddingEnabled:Z

.field private blacklist mIsPopupTouchable:Z

.field private blacklist mIsSPenPointChanged:Z

.field private blacklist mIsShowMessageSent:Z

.field private blacklist mIsSkipPenPointEffect:Z

.field private blacklist mIsTryingShowPopup:Z

.field private blacklist mIsUspFeature:Z

.field private blacklist mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private blacklist mNavigationBarHeight:I

.field private blacklist mNeedNotWindowOffset:Z

.field private blacklist mNeedToMeasureContentView:Z

.field protected final blacklist mParentView:Landroid/view/View;

.field private blacklist mPopup:Landroid/widget/PopupWindow;

.field protected blacklist mPopupGravity:I

.field private blacklist mPopupOffsetX:I

.field private blacklist mPopupOffsetY:I

.field private blacklist mPopupPosX:I

.field private blacklist mPopupPosY:I

.field protected blacklist mPopupType:I

.field private blacklist mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mShowPopupRunnable:Ljava/lang/Runnable;

.field private blacklist mToolType:I

.field private blacklist mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private blacklist mWindowGapX:I


# direct methods
.method public static synthetic blacklist $r8$lambda$VAWVpXN7ujernJyIDGuMo72mIns(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDismissTouchableHPWOnActionUp(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolType(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    :cond_1
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist computePopupPosition(Landroid/view/View;III)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getDeviceRotation()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    iget-object v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    if-nez p1, :cond_2

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object/from16 v5, p1

    :goto_0
    iput-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v6, p2

    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v7, p3

    iput v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v8, p4

    iput v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    sget-boolean v9, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    const-string v10, "computePopupPosition :anchorLocInWindow y:"

    const-string v11, "computePopupPosition :anchorLocInWindow x:"

    const-string v12, "computePopupPosition :anchorLocOnScr y:"

    const-string v13, "computePopupPosition :anchorLocOnScr x:"

    const-string v14, "SemHoverPopupWindow"

    const/4 v1, 0x0

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v15, v2, v1

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v15, 0x1

    aget v1, v2, v15

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v9, 0x0

    aget v15, v3, v9

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v9, 0x1

    aget v15, v3, v9

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    :goto_1
    move/from16 v19, v1

    instance-of v1, v15, Landroid/view/View;

    if-eqz v1, :cond_6

    move-object v1, v15

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v19, 0x0

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    move/from16 v1, v19

    goto :goto_1

    :cond_6
    move/from16 v1, v19

    :goto_2
    if-nez v1, :cond_7

    invoke-virtual {v5, v9}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const/4 v15, 0x0

    aget v18, v3, v15

    iget v6, v9, Landroid/graphics/Rect;->left:I

    aget v19, v2, v15

    sub-int v6, v6, v19

    add-int v18, v18, v6

    aput v18, v3, v15

    const/4 v6, 0x1

    aget v17, v3, v6

    iget v15, v9, Landroid/graphics/Rect;->top:I

    aget v19, v2, v6

    sub-int v15, v15, v19

    add-int v17, v17, v15

    aput v17, v3, v6

    iget v15, v9, Landroid/graphics/Rect;->left:I

    const/16 v17, 0x0

    aput v15, v2, v17

    iget v15, v9, Landroid/graphics/Rect;->top:I

    aput v15, v2, v6

    :cond_7
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-boolean v15, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computePopupPosition :displayFrame left:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePopupPosition :displayFrame right:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePopupPosition :displayFrame top:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computePopupPosition :displayFrame bottom:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v15, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v20

    const/16 v18, 0x0

    aget v21, v2, v18

    aget v22, v3, v18

    sub-int v8, v21, v22

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int v8, v8, v19

    iput v8, v7, Landroid/graphics/Rect;->right:I

    const/4 v8, 0x1

    aget v21, v2, v8

    aget v22, v3, v8

    sub-int v8, v21, v22

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int v8, v8, v20

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v21, v15

    iget v15, v7, Landroid/graphics/Rect;->left:I

    if-ne v8, v15, :cond_a

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v15, v7, Landroid/graphics/Rect;->right:I

    if-ne v8, v15, :cond_a

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v15, v7, Landroid/graphics/Rect;->top:I

    if-ne v8, v15, :cond_a

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v15, :cond_9

    goto :goto_3

    :cond_9
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    goto/16 :goto_7

    :cond_a
    :goto_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v15, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v15, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v22, v15

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeFormMode()Z

    move-result v23

    if-nez v23, :cond_10

    if-nez v23, :cond_b

    move-object/from16 v24, v10

    iget v10, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v25, v11

    const/16 v11, -0x2710

    if-ne v10, v11, :cond_c

    iget v10, v8, Landroid/graphics/Rect;->right:I

    const/16 v11, 0x2710

    if-ne v10, v11, :cond_c

    iget v10, v8, Landroid/graphics/Rect;->top:I

    const/16 v11, -0x2710

    if-ne v10, v11, :cond_c

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v11, 0x2710

    if-eq v10, v11, :cond_d

    goto :goto_4

    :cond_b
    move-object/from16 v24, v10

    move-object/from16 v25, v11

    :cond_c
    :goto_4
    if-nez v23, :cond_e

    iget v10, v8, Landroid/graphics/Rect;->right:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v10, v11, :cond_d

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v10, v11, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v26, v8

    goto :goto_6

    :cond_e
    :goto_5
    if-nez v23, :cond_f

    iget v10, v6, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x0

    aget v18, v3, v11

    add-int v10, v10, v18

    move-object/from16 v26, v8

    aget v8, v2, v11

    if-ne v10, v8, :cond_11

    iget v8, v6, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x1

    aget v11, v3, v10

    add-int/2addr v8, v11

    aget v11, v2, v10

    if-eq v8, v11, :cond_12

    goto :goto_6

    :cond_f
    move-object/from16 v26, v8

    goto :goto_7

    :cond_10
    move-object/from16 v26, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    :cond_11
    :goto_6
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v6, Landroid/graphics/Rect;->left:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iput v8, v6, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    :cond_12
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v8, v10, :cond_14

    const/4 v8, 0x0

    aget v10, v2, v8

    aget v11, v3, v8

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    const/4 v10, 0x1

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-eqz v1, :cond_13

    new-instance v11, Landroid/graphics/Rect;

    aget v15, v3, v8

    move-object/from16 v22, v7

    aget v7, v3, v10

    aget v16, v3, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v8, v16, v8

    aget v16, v3, v10

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v10, v16, v10

    invoke-direct {v11, v15, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v11

    move-object/from16 v23, v3

    goto :goto_9

    :cond_13
    move-object/from16 v22, v7

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v15, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v15

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v23, v3

    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v3

    invoke-direct {v7, v8, v10, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_14
    move-object/from16 v23, v3

    move-object/from16 v22, v7

    const/4 v3, 0x2

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v3, 0x0

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    if-eqz v1, :cond_15

    new-instance v7, Landroid/graphics/Rect;

    aget v8, v2, v3

    const/4 v10, 0x1

    aget v11, v2, v10

    aget v15, v2, v3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v15, v3

    aget v3, v2, v10

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v3, v3, v16

    invoke-direct {v7, v8, v11, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v7

    goto :goto_8

    :cond_15
    const/4 v10, 0x1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v8, v2, v7

    aget v7, v2, v10

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v8, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    :goto_8
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_16

    iget v3, v6, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_16

    const/4 v3, 0x0

    iput v3, v6, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    iput v3, v6, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    :cond_16
    :goto_9
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_1a

    iget v3, v6, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1a

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v10, v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_19

    move-object v10, v8

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v15, v10, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v11, v15

    and-int/lit16 v11, v11, 0x404

    if-nez v11, :cond_17

    const/4 v11, 0x1

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    :goto_a
    const/4 v15, 0x0

    move/from16 v16, v1

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    move-object/from16 v26, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    if-eqz v11, :cond_18

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050566

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    :cond_18
    const/4 v1, 0x0

    iput v1, v6, Landroid/graphics/Rect;->left:I

    iput v15, v6, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v6, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    :cond_19
    move/from16 v16, v1

    move-object/from16 v26, v3

    goto :goto_b

    :cond_1a
    move/from16 v16, v1

    :goto_b
    sget-boolean v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computePopupPosition: displayMetrics"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v8, v2, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v8, v2, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v8, v23, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v3, v23, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computePopupPosition :displayFrame:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->measureContentView(Landroid/util/DisplayMetrics;)V

    invoke-direct {v0, v7, v6}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    :cond_1c
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_1e
    :goto_c
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1f

    const-string v1, "computePopupPosition: Call resetTimeout()"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    :cond_1f
    return-void
.end method

.method private blacklist computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v5, v5, 0xf0f

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    const v7, 0xf0f0

    and-int/2addr v6, v7

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v14, 0x105046b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget-object v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v15, 0x1050566

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/4 v15, 0x0

    move/from16 v16, v3

    instance-of v3, v11, Landroid/view/WindowManager$LayoutParams;

    move/from16 v17, v4

    if-eqz v3, :cond_2

    move-object v3, v11

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v20, v10

    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v10

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v12, v4

    if-eqz v12, :cond_1

    move v4, v14

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v15, v4

    goto :goto_2

    :cond_2
    move-object/from16 v20, v10

    :goto_2
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v10

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move-object/from16 v21, v11

    const/4 v11, 0x2

    if-nez v10, :cond_5

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-ne v10, v11, :cond_3

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v16, v10

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    move/from16 v23, v16

    move/from16 v16, v5

    move v5, v10

    move/from16 v10, v23

    goto/16 :goto_6

    :cond_3
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v16, v5

    move v5, v11

    goto/16 :goto_6

    :cond_4
    move/from16 v10, v16

    move/from16 v16, v5

    move/from16 v5, v17

    goto/16 :goto_6

    :cond_5
    sparse-switch v5, :sswitch_data_0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    goto :goto_4

    :sswitch_0
    iget v10, v1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :sswitch_1
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    goto :goto_4

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v22, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    iput v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    goto :goto_3

    :cond_6
    const/16 v22, 0x2

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    :goto_3
    iget-boolean v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    if-eqz v11, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    goto :goto_4

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    goto :goto_4

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    goto :goto_4

    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    goto :goto_4

    :sswitch_6
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    goto :goto_4

    :sswitch_7
    iget v10, v1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    nop

    :cond_8
    :goto_4
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v10, v11

    sparse-switch v6, :sswitch_data_1

    move/from16 v16, v5

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto :goto_5

    :sswitch_9
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v7

    move/from16 v16, v5

    goto :goto_5

    :sswitch_a
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v5

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v11, v5

    sub-int/2addr v11, v7

    goto :goto_5

    :sswitch_b
    move/from16 v16, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v11, v5, v11

    goto :goto_5

    :sswitch_c
    move/from16 v16, v5

    iget v11, v1, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :sswitch_d
    move/from16 v16, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v5, v11

    nop

    :goto_5
    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v5, v11

    :goto_6
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v17, v12

    const/4 v12, 0x2

    if-ne v11, v12, :cond_12

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v11, v5

    iget v12, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v11, v12, :cond_a

    const/16 v11, 0x5050

    if-ne v6, v11, :cond_9

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v11, v12, :cond_a

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v5, v11, v12

    goto :goto_7

    :cond_9
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v5, v11, v12

    :cond_a
    :goto_7
    if-gez v10, :cond_b

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_8

    :cond_b
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v10

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v11, v12, :cond_c

    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_c
    :goto_8
    sget-boolean v11, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "computePopupPositionInternal :realDisplayMetrics width:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SemHoverPopupWindow"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v10

    const-string v10, "computePopupPositionInternal :realDisplayMetrics height:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    move/from16 v18, v10

    :goto_9
    if-ge v5, v15, :cond_11

    const/16 v10, 0x3030

    if-ne v6, v10, :cond_10

    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v10, v11, :cond_e

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int v5, v10, v11

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    :cond_e
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v15

    if-le v10, v11, :cond_f

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v10, v7

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    :cond_f
    move v5, v15

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    :cond_10
    iget v10, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    :cond_11
    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    :cond_12
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2a

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    const/4 v12, 0x3

    if-gtz v11, :cond_15

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-ne v11, v12, :cond_13

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v11, :cond_13

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v11, v12, :cond_13

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    add-int/2addr v11, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_a

    :cond_13
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    if-eqz v14, :cond_14

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    if-ge v11, v14, :cond_14

    add-int v11, v14, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_a

    :cond_14
    iget v11, v2, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    add-int/2addr v11, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_a

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isEmbeddedMode()Z

    move-result v11

    if-nez v11, :cond_16

    iget-object v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isAnchorViewInAppBounds(II)Z

    move-result v11

    if-eqz v11, :cond_16

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v11, v12, :cond_16

    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    :cond_16
    iget v11, v2, Landroid/graphics/Rect;->left:I

    if-ltz v11, :cond_1b

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-ge v3, v11, :cond_17

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v3

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    if-ltz v11, :cond_1b

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    :cond_17
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v10

    if-le v11, v3, :cond_19

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v13

    if-lt v3, v11, :cond_18

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int v11, v3, v11

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    :cond_18
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-lt v3, v11, :cond_1b

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    :cond_19
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1a

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v11, :cond_1a

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v11, v12, :cond_1a

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    add-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_a

    :cond_1a
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_1b
    :goto_a
    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v5

    if-ge v11, v14, :cond_21

    const/16 v11, 0x3030

    if-ne v6, v11, :cond_20

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    sub-int/2addr v11, v14

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v11, v12, :cond_1d

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v5, v11, v5

    move/from16 v19, v3

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v5, v3, :cond_1c

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v12, v3

    move v5, v12

    goto :goto_c

    :cond_1c
    move v5, v12

    goto :goto_c

    :cond_1d
    move/from16 v19, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v11, v3, :cond_1f

    iget v3, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v12

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-le v3, v12, :cond_1e

    goto :goto_b

    :cond_1e
    move v3, v14

    move v5, v3

    goto :goto_c

    :cond_1f
    :goto_b
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    move v5, v3

    :goto_c
    goto/16 :goto_f

    :cond_20
    move/from16 v19, v3

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_f

    :cond_21
    move/from16 v19, v3

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v5

    if-le v3, v4, :cond_26

    const/16 v3, 0x5050

    if-ne v6, v3, :cond_23

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v3, v11, :cond_2b

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_22

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v5

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v11, :cond_2b

    :cond_22
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v11

    iget v11, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v11, :cond_2b

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v5, v3, v11

    goto/16 :goto_f

    :cond_23
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v3, v15, :cond_25

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-nez v3, :cond_24

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v3, :cond_24

    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v11

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_f

    :cond_24
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v3, v4, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_f

    :cond_25
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v11

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_f

    :cond_26
    const/16 v3, 0x3030

    if-ne v6, v3, :cond_27

    if-ge v5, v14, :cond_28

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    iget v11, v1, Landroid/graphics/Rect;->top:I

    if-le v3, v11, :cond_28

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v11

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v11, :cond_28

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v3, v7

    goto :goto_d

    :cond_27
    if-ge v5, v14, :cond_28

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_28

    move v5, v14

    :cond_28
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_29

    const/16 v3, 0x28

    goto :goto_e

    :cond_29
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    :goto_e
    if-eqz v3, :cond_2b

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v5

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v11, v12, :cond_2b

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v5, v11, v12

    goto :goto_f

    :cond_2a
    move/from16 v19, v3

    :cond_2b
    :goto_f
    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_7
        0x5 -> :sswitch_6
        0x101 -> :sswitch_5
        0x103 -> :sswitch_4
        0x105 -> :sswitch_3
        0x201 -> :sswitch_2
        0x303 -> :sswitch_1
        0x505 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_d
        0x30 -> :sswitch_c
        0x50 -> :sswitch_b
        0x3030 -> :sswitch_a
        0x5050 -> :sswitch_9
    .end sparse-switch
.end method

.method private blacklist dismissPopup()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    :cond_2
    return-void
.end method

.method private blacklist getDeviceRotation()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v1, 0x1110226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x10502c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private blacklist getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "SemHoverPopupWindow"

    if-nez v3, :cond_1

    const-string v3, "getApplicationContext() is null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealDisplayMetrics :sRealDisplayMetricsInDexMode width:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealDisplayMetrics :sRealDisplayMetricsInDexMode height:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_3
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v3

    :cond_4
    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealDisplayMetrics :displaySize width:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealDisplayMetrics :displaySize height:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2
.end method

.method private blacklist getStateHashCode()I
    .locals 5

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x2

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    new-array v1, v4, [I

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x14

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private blacklist getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final greylist hidden_TYPE_NONE()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final greylist hidden_TYPE_TOOLTIP()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final greylist hidden_TYPE_USER_CUSTOM()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private greylist hidden_setGravity(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    return-void
.end method

.method private greylist hidden_setHoverDetectTime(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    return-void
.end method

.method private greylist hidden_setOffset(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    return-void
.end method

.method private greylist hidden_update()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    return-void
.end method

.method private blacklist initCoverManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "SemHoverPopupWindow"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist initInstance()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getNavigationBarHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const v2, 0x103030d

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return-void
.end method

.method private blacklist isAnchorViewInAppBounds(II)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private blacklist isEmbeddedMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isFreeFormMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

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

.method private blacklist isHoveringSettingEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private blacklist isMouseHoveringSettingsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->semIsDesktopMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isPopOver()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v0

    return v0
.end method

.method private blacklist isSPenHoveringSettingsEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x3

    const-string v2, "pen_hovering"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method private blacklist isTalkBackEnabledForDeX()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private blacklist isViewCoverClose()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemHoverPopupWindow"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private blacklist measureContentView(Landroid/util/DisplayMetrics;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_2

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    return-void
.end method

.method private blacklist pointInValidHoverArea(FF)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist resetTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private blacklist setPopupContent()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :pswitch_2
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_3
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist showPopup()V
    .locals 4

    const-string v0, "SemHoverPopupWindow"

    :try_start_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPopup() is cancelled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail show hover popup :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private blacklist updateHoverPopup(Landroid/view/View;III)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHoverPopup(), returned due to mPopup == null  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHoverPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected blacklist createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setIsLaidOutInScreen(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public blacklist getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist isHoverPopupPossible()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :pswitch_2
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isUspFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected blacklist makeDefaultContentView()V
    .locals 0

    return-void
.end method

.method public blacklist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    return v8

    :pswitch_2
    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    return v8

    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v9, :cond_4

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_3

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    return v8

    :cond_2
    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    return v8

    :cond_3
    if-nez v9, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v5, :cond_4

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return v8

    :cond_4
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    :cond_5
    return v8

    :cond_6
    :goto_0
    return v7

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected blacklist postDismiss(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public blacklist setAnimationStyle(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public whitelist setContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public whitelist setContent(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public blacklist setDismissTouchableHPWOnActionUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public whitelist setHoverDetectTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public blacklist setHoverPaddingArea(IIII)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void
.end method

.method public blacklist setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public blacklist setHoverPopupToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return-void
.end method

.method public greylist setHoveringPoint(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method protected blacklist setInstanceByType(I)V
    .locals 0

    return-void
.end method

.method public blacklist setNeedNotWindowOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    return-void
.end method

.method public whitelist setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public whitelist setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    return-void
.end method

.method public whitelist setTouchable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public whitelist show()V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    const-string v1, "SemHoverPopupWindow"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Toolkit porting remove this log after all feature included"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v3, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkBackEnabledForDeX()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_6
    new-instance v3, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method protected blacklist showPenPointEffect(Z)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const/16 v2, 0x4e2a

    invoke-static {v0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist update()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    :goto_1
    return-void
.end method
