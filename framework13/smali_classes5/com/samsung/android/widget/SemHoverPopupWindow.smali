.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;
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
.method public static synthetic blacklist $r8$lambda$Vj2Beb4Zm-NM8MSMfH7ceXF60Qk(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
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

    .line 76
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;I)V
    .locals 5
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    .line 154
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    .line 156
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 158
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 162
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 164
    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 165
    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 178
    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 192
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 194
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 211
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 214
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 215
    iget v0, v2, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 218
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    .line 222
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    .line 225
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 232
    :cond_1
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 244
    return-void
.end method

.method private blacklist computePopupPosition(Landroid/view/View;III)V
    .locals 28
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 894
    return-void

    .line 896
    :cond_0
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v1, :cond_1

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getDeviceRotation()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    .line 901
    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 902
    .local v2, "anchorLocOnScr":[I
    new-array v3, v1, [I

    .line 903
    .local v3, "anchorLocInWindow":[I
    iget-object v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 905
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_2

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object/from16 v5, p1

    :goto_0
    iput-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 906
    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 907
    .local v5, "anchorView":Landroid/view/View;
    move/from16 v6, p2

    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 908
    move/from16 v7, p3

    iput v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 909
    move/from16 v8, p4

    iput v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 910
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 911
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 914
    sget-boolean v9, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    const-string v10, "computePopupPosition :anchorLocInWindow y:"

    const-string v11, "computePopupPosition :anchorLocInWindow x:"

    const-string v12, "computePopupPosition :anchorLocOnScr y:"

    const-string v13, "computePopupPosition :anchorLocOnScr x:"

    const-string v14, "SemHoverPopupWindow"

    const/4 v1, 0x0

    if-eqz v9, :cond_3

    .line 915
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

    .line 916
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

    .line 917
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

    .line 918
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

    .line 922
    :cond_3
    const/4 v1, 0x1

    .line 923
    .local v1, "isHasIdentityMatrix":Z
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 925
    .local v9, "realRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v15

    if-nez v15, :cond_4

    .line 926
    const/4 v1, 0x0

    goto :goto_2

    .line 928
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 929
    .local v15, "viewParent":Landroid/view/ViewParent;
    :goto_1
    move/from16 v19, v1

    .end local v1    # "isHasIdentityMatrix":Z
    .local v19, "isHasIdentityMatrix":Z
    instance-of v1, v15, Landroid/view/View;

    if-eqz v1, :cond_6

    .line 930
    move-object v1, v15

    check-cast v1, Landroid/view/View;

    .line 932
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v20

    if-nez v20, :cond_5

    .line 933
    const/16 v19, 0x0

    .line 935
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 936
    .end local v1    # "view":Landroid/view/View;
    move/from16 v1, v19

    goto :goto_1

    .line 929
    :cond_6
    move/from16 v1, v19

    .line 938
    .end local v15    # "viewParent":Landroid/view/ViewParent;
    .end local v19    # "isHasIdentityMatrix":Z
    .local v1, "isHasIdentityMatrix":Z
    :goto_2
    if-nez v1, :cond_7

    .line 939
    invoke-virtual {v5, v9}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 940
    const/4 v15, 0x0

    aget v18, v3, v15

    iget v6, v9, Landroid/graphics/Rect;->left:I

    aget v19, v2, v15

    sub-int v6, v6, v19

    add-int v18, v18, v6

    aput v18, v3, v15

    .line 941
    const/4 v6, 0x1

    aget v17, v3, v6

    iget v15, v9, Landroid/graphics/Rect;->top:I

    aget v19, v2, v6

    sub-int v15, v15, v19

    add-int v17, v17, v15

    aput v17, v3, v6

    .line 942
    iget v15, v9, Landroid/graphics/Rect;->left:I

    const/16 v17, 0x0

    aput v15, v2, v17

    .line 943
    iget v15, v9, Landroid/graphics/Rect;->top:I

    aput v15, v2, v6

    .line 947
    :cond_7
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 948
    .local v6, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 951
    sget-boolean v15, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v15, :cond_8

    .line 952
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame left:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computePopupPosition :displayFrame bottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 960
    .local v7, "rootViewDisplayRect":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 961
    .local v8, "rootView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 962
    .local v19, "rootViewWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 963
    .local v20, "rootViewHeight":I
    const/16 v18, 0x0

    aget v21, v2, v18

    aget v22, v3, v18

    move-object/from16 v23, v8

    .end local v8    # "rootView":Landroid/view/View;
    .local v23, "rootView":Landroid/view/View;
    sub-int v8, v21, v22

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 964
    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int v8, v8, v19

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 965
    const/4 v8, 0x1

    aget v21, v2, v8

    aget v22, v3, v8

    sub-int v8, v21, v22

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 966
    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int v8, v8, v20

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 967
    iget v8, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v21, v10

    iget v10, v7, Landroid/graphics/Rect;->left:I

    if-ne v8, v10, :cond_a

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-ne v8, v10, :cond_a

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-ne v8, v10, :cond_a

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v10, :cond_9

    goto :goto_3

    :cond_9
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    goto/16 :goto_7

    .line 971
    :cond_a
    :goto_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 972
    .local v8, "tempDisplayFrame":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 973
    .local v10, "tempAnchorView":Landroid/view/View;
    invoke-virtual {v10, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 974
    move-object/from16 v22, v10

    .end local v10    # "tempAnchorView":Landroid/view/View;
    .local v22, "tempAnchorView":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 975
    .local v10, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeFormMode()Z

    move-result v24

    .line 976
    .local v24, "isFreeForm":Z
    if-nez v24, :cond_10

    if-nez v24, :cond_b

    move-object/from16 v25, v11

    iget v11, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v26, v12

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_c

    iget v11, v8, Landroid/graphics/Rect;->right:I

    const/16 v12, 0x2710

    if-ne v11, v12, :cond_c

    iget v11, v8, Landroid/graphics/Rect;->top:I

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_c

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    const/16 v12, 0x2710

    if-eq v11, v12, :cond_d

    goto :goto_4

    :cond_b
    move-object/from16 v25, v11

    move-object/from16 v26, v12

    :cond_c
    :goto_4
    if-nez v24, :cond_e

    iget v11, v8, Landroid/graphics/Rect;->right:I

    iget v12, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v11, v12, :cond_d

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    iget v12, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v11, v12, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v27, v8

    goto :goto_6

    :cond_e
    :goto_5
    if-nez v24, :cond_f

    iget v11, v6, Landroid/graphics/Rect;->left:I

    const/4 v12, 0x0

    aget v18, v3, v12

    add-int v11, v11, v18

    move-object/from16 v27, v8

    .end local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    .local v27, "tempDisplayFrame":Landroid/graphics/Rect;
    aget v8, v2, v12

    if-ne v11, v8, :cond_11

    iget v8, v6, Landroid/graphics/Rect;->top:I

    const/4 v11, 0x1

    aget v12, v3, v11

    add-int/2addr v8, v12

    aget v12, v2, v11

    if-eq v8, v12, :cond_12

    goto :goto_6

    .end local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_f
    move-object/from16 v27, v8

    .end local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    goto :goto_7

    .end local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v27, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    .line 985
    .end local v8    # "tempDisplayFrame":Landroid/graphics/Rect;
    .restart local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_11
    :goto_6
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v6, Landroid/graphics/Rect;->left:I

    .line 986
    iget v8, v7, Landroid/graphics/Rect;->right:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 987
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 988
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 992
    .end local v10    # "realDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v22    # "tempAnchorView":Landroid/view/View;
    .end local v24    # "isFreeForm":Z
    .end local v27    # "tempDisplayFrame":Landroid/graphics/Rect;
    :cond_12
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v8, v10, :cond_14

    .line 994
    const/4 v8, 0x0

    aget v10, v2, v8

    aget v11, v3, v8

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 995
    const/4 v10, 0x1

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 997
    if-eqz v1, :cond_13

    .line 998
    new-instance v11, Landroid/graphics/Rect;

    aget v12, v3, v8

    move-object/from16 v22, v7

    .end local v7    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .local v22, "rootViewDisplayRect":Landroid/graphics/Rect;
    aget v7, v3, v10

    aget v16, v3, v8

    .line 999
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v8, v16, v8

    aget v16, v3, v10

    .line 1000
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v10, v16, v10

    invoke-direct {v11, v12, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v11

    move-object/from16 v24, v3

    .local v7, "anchorRect":Landroid/graphics/Rect;
    goto :goto_9

    .line 1002
    .end local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .local v7, "rootViewDisplayRect":Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v22, v7

    .end local v7    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .restart local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v24, v3

    .end local v3    # "anchorLocInWindow":[I
    .local v24, "anchorLocInWindow":[I
    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v3

    invoke-direct {v7, v8, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v7, "anchorRect":Landroid/graphics/Rect;
    goto :goto_9

    .line 1008
    .end local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .end local v24    # "anchorLocInWindow":[I
    .restart local v3    # "anchorLocInWindow":[I
    .local v7, "rootViewDisplayRect":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v24, v3

    move-object/from16 v22, v7

    .end local v3    # "anchorLocInWindow":[I
    .end local v7    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .restart local v22    # "rootViewDisplayRect":Landroid/graphics/Rect;
    .restart local v24    # "anchorLocInWindow":[I
    const/4 v3, 0x2

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1009
    const/4 v3, 0x0

    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 1011
    if-eqz v1, :cond_15

    .line 1012
    new-instance v7, Landroid/graphics/Rect;

    aget v8, v2, v3

    const/4 v10, 0x1

    aget v11, v2, v10

    aget v12, v2, v3

    .line 1013
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v12, v3

    aget v3, v2, v10

    .line 1014
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v3, v3, v16

    invoke-direct {v7, v8, v11, v12, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v7

    .local v3, "anchorRect":Landroid/graphics/Rect;
    goto :goto_8

    .line 1016
    .end local v3    # "anchorRect":Landroid/graphics/Rect;
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

    .line 1023
    .local v7, "anchorRect":Landroid/graphics/Rect;
    :goto_8
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_16

    iget v3, v6, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_16

    .line 1024
    const/4 v3, 0x0

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 1025
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 1026
    iput v3, v6, Landroid/graphics/Rect;->top:I

    .line 1027
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 1031
    :cond_16
    :goto_9
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_1a

    iget v3, v6, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1a

    .line 1032
    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1033
    .local v3, "root":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1035
    .local v8, "rootLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_19

    .line 1036
    move-object v10, v8

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    .line 1037
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v11, v12

    and-int/lit16 v11, v11, 0x404

    if-nez v11, :cond_17

    const/4 v11, 0x1

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    .line 1040
    .local v11, "isSystemUiVisible":Z
    :goto_a
    const/4 v12, 0x0

    .line 1041
    .local v12, "statusBarHeight":I
    move/from16 v16, v1

    .end local v1    # "isHasIdentityMatrix":Z
    .local v16, "isHasIdentityMatrix":Z
    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    move-object/from16 v27, v3

    const/4 v3, 0x1

    .end local v3    # "root":Landroid/view/View;
    .local v27, "root":Landroid/view/View;
    if-ne v1, v3, :cond_18

    if-eqz v11, :cond_18

    .line 1042
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x10504cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1044
    :cond_18
    const/4 v1, 0x0

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 1045
    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 1046
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 1047
    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    .line 1035
    .end local v10    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "isSystemUiVisible":Z
    .end local v12    # "statusBarHeight":I
    .end local v16    # "isHasIdentityMatrix":Z
    .end local v27    # "root":Landroid/view/View;
    .restart local v1    # "isHasIdentityMatrix":Z
    .restart local v3    # "root":Landroid/view/View;
    :cond_19
    move/from16 v16, v1

    move-object/from16 v27, v3

    .end local v1    # "isHasIdentityMatrix":Z
    .end local v3    # "root":Landroid/view/View;
    .restart local v16    # "isHasIdentityMatrix":Z
    .restart local v27    # "root":Landroid/view/View;
    goto :goto_b

    .line 1031
    .end local v8    # "rootLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "isHasIdentityMatrix":Z
    .end local v27    # "root":Landroid/view/View;
    .restart local v1    # "isHasIdentityMatrix":Z
    :cond_1a
    move/from16 v16, v1

    .line 1051
    .end local v1    # "isHasIdentityMatrix":Z
    .restart local v16    # "isHasIdentityMatrix":Z
    :goto_b
    if-eqz v15, :cond_1b

    .line 1052
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

    .line 1053
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

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v8, v2, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v8, v24, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v3, v24, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
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

    .line 1061
    :cond_1b
    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->measureContentView(Landroid/util/DisplayMetrics;)V

    .line 1063
    invoke-direct {v0, v7, v6}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1066
    iget-boolean v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_1f

    .line 1067
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-nez v1, :cond_1c

    .line 1068
    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 1070
    :cond_1c
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1071
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 1072
    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1073
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    .line 1074
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    .line 1078
    :cond_1e
    :goto_c
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1f

    .line 1079
    const-string v1, "computePopupPosition: Call resetTimeout()"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    .line 1084
    :cond_1f
    return-void
.end method

.method private blacklist computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 24
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;

    .line 1093
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1094
    iput-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1096
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1097
    .local v3, "posX":I
    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1101
    .local v4, "posY":I
    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v6, v5, 0xf0f

    .line 1102
    .local v6, "hGravity":I
    const v7, 0xf0f0

    and-int/2addr v5, v7

    .line 1103
    .local v5, "vGravity":I
    const/4 v7, 0x0

    .line 1105
    .local v7, "tooltipTopMargin":I
    iget-object v8, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 1106
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 1107
    .local v9, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1108
    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1109
    .local v11, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .line 1110
    .local v12, "isSystemUiVisible":Z
    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v14, 0x10503e4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1112
    .local v13, "fullTextXShift":I
    iget-object v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v15, 0x10504cc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1113
    .local v14, "statusBarHeight":I
    const/4 v15, 0x0

    .line 1115
    .local v15, "realStatusBarHeight":I
    move/from16 v16, v3

    .end local v3    # "posX":I
    .local v16, "posX":I
    instance-of v3, v11, Landroid/view/WindowManager$LayoutParams;

    move/from16 v17, v4

    .end local v4    # "posY":I
    .local v17, "posY":I
    if-eqz v3, :cond_2

    .line 1116
    move-object v3, v11

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 1117
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v20, v10

    .end local v10    # "root":Landroid/view/View;
    .local v20, "root":Landroid/view/View;
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

    .line 1120
    if-eqz v12, :cond_1

    move v4, v14

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v15, v4

    goto :goto_2

    .line 1115
    .end local v3    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "root":Landroid/view/View;
    .restart local v10    # "root":Landroid/view/View;
    :cond_2
    move-object/from16 v20, v10

    .line 1123
    .end local v10    # "root":Landroid/view/View;
    .restart local v20    # "root":Landroid/view/View;
    :goto_2
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 1124
    .local v3, "displayFrameWidth":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v10

    .line 1126
    .local v4, "displayFrameHeight":I
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move-object/from16 v21, v11

    .end local v11    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .local v21, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x2

    if-nez v10, :cond_5

    .line 1128
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-ne v10, v11, :cond_3

    .line 1129
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    .line 1130
    .end local v16    # "posX":I
    .local v10, "posX":I
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v16, v10

    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    move/from16 v23, v16

    move/from16 v16, v6

    move v6, v10

    move/from16 v10, v23

    .end local v17    # "posY":I
    .local v10, "posY":I
    goto/16 :goto_6

    .line 1131
    .end local v10    # "posY":I
    .restart local v17    # "posY":I
    :cond_3
    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 1132
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1133
    .end local v16    # "posX":I
    .local v10, "posX":I
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v16, v6

    move v6, v11

    .end local v17    # "posY":I
    .local v11, "posY":I
    goto/16 :goto_6

    .line 1131
    .end local v10    # "posX":I
    .end local v11    # "posY":I
    .restart local v16    # "posX":I
    .restart local v17    # "posY":I
    :cond_4
    move/from16 v10, v16

    move/from16 v16, v6

    move/from16 v6, v17

    goto/16 :goto_6

    .line 1137
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 1174
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1157
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_0
    iget v10, v1, Landroid/graphics/Rect;->right:I

    .line 1158
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1139
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_1
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    .line 1140
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1163
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1164
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v22, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1165
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    const/4 v11, 0x0

    iput v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    goto :goto_3

    .line 1167
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :cond_6
    const/16 v22, 0x2

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1169
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    :goto_3
    iget-boolean v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    if-eqz v11, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1170
    :cond_7
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    goto :goto_4

    .line 1151
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 1152
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1145
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    .line 1146
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1160
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1161
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1154
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_6
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v10, v11

    .line 1155
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1142
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_7
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 1143
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    goto :goto_4

    .line 1148
    .end local v10    # "posX":I
    .restart local v16    # "posX":I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    .line 1149
    .end local v16    # "posX":I
    .restart local v10    # "posX":I
    nop

    .line 1178
    :cond_8
    :goto_4
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v10, v11

    .line 1181
    sparse-switch v5, :sswitch_data_1

    .line 1198
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .local v16, "hGravity":I
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_5

    .line 1195
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_9
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v7

    .line 1196
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    move/from16 v16, v6

    goto :goto_5

    .line 1183
    .end local v11    # "posY":I
    .restart local v17    # "posY":I
    :sswitch_a
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v11, v6

    sub-int/2addr v11, v7

    .line 1184
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_5

    .line 1192
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_b
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v11, v6, v11

    .line 1193
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_5

    .line 1186
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_c
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 1187
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    goto :goto_5

    .line 1189
    .end local v11    # "posY":I
    .end local v16    # "hGravity":I
    .restart local v6    # "hGravity":I
    .restart local v17    # "posY":I
    :sswitch_d
    move/from16 v16, v6

    .end local v6    # "hGravity":I
    .restart local v16    # "hGravity":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v6, v11

    .line 1190
    .end local v17    # "posY":I
    .restart local v11    # "posY":I
    nop

    .line 1202
    :goto_5
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v6, v11

    .line 1205
    .end local v11    # "posY":I
    .local v6, "posY":I
    :goto_6
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v17, v12

    .end local v12    # "isSystemUiVisible":Z
    .local v17, "isSystemUiVisible":Z
    const/4 v12, 0x2

    if-ne v11, v12, :cond_12

    .line 1206
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v11, v6

    iget v12, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v11, v12, :cond_a

    .line 1210
    const/16 v11, 0x5050

    if-ne v5, v11, :cond_9

    .line 1211
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v11, v12, :cond_a

    .line 1212
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v6, v11, v12

    goto :goto_7

    .line 1215
    :cond_9
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v6, v11, v12

    .line 1220
    :cond_a
    :goto_7
    if-gez v10, :cond_b

    .line 1221
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_8

    .line 1222
    :cond_b
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v10

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v11, v12, :cond_c

    .line 1223
    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1227
    :cond_c
    :goto_8
    sget-boolean v11, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v11, :cond_d

    .line 1228
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

    .line 1230
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v10

    .end local v10    # "posX":I
    .local v18, "posX":I
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

    .line 1227
    .end local v18    # "posX":I
    .restart local v10    # "posX":I
    :cond_d
    move/from16 v18, v10

    .line 1235
    .end local v10    # "posX":I
    .restart local v18    # "posX":I
    :goto_9
    if-ge v6, v15, :cond_11

    .line 1238
    const/16 v10, 0x3030

    if-ne v5, v10, :cond_10

    .line 1239
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v10, v11, :cond_e

    .line 1240
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int v6, v10, v11

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    .line 1241
    :cond_e
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v15

    if-le v10, v11, :cond_f

    .line 1243
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v7

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    .line 1245
    :cond_f
    move v6, v15

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    .line 1248
    :cond_10
    iget v10, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    .line 1235
    :cond_11
    move/from16 v19, v3

    move/from16 v10, v18

    goto/16 :goto_f

    .line 1251
    .end local v18    # "posX":I
    .restart local v10    # "posX":I
    :cond_12
    const/4 v12, 0x1

    if-ne v11, v12, :cond_2b

    .line 1253
    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    const/4 v12, 0x3

    if-gtz v11, :cond_15

    .line 1254
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1255
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-ne v11, v12, :cond_13

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v11, :cond_13

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v11, v12, :cond_13

    .line 1257
    add-int/2addr v12, v13

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_a

    .line 1258
    :cond_13
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    if-eqz v14, :cond_14

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    if-ge v11, v14, :cond_14

    .line 1260
    add-int v11, v14, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_a

    .line 1262
    :cond_14
    iget v11, v2, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    add-int/2addr v11, v13

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_a

    .line 1264
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isEmbeddedMode()Z

    move-result v11

    if-nez v11, :cond_16

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v11, v12, :cond_16

    .line 1265
    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    .line 1267
    :cond_16
    iget v11, v2, Landroid/graphics/Rect;->left:I

    if-ltz v11, :cond_1b

    .line 1268
    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-ge v3, v11, :cond_17

    .line 1269
    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v3

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v11, v12

    if-ltz v11, :cond_1b

    .line 1270
    sub-int v11, v3, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    .line 1272
    :cond_17
    add-int v12, v10, v11

    if-le v12, v3, :cond_19

    .line 1273
    add-int v12, v11, v13

    if-lt v3, v12, :cond_18

    .line 1274
    sub-int v11, v3, v11

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    .line 1275
    :cond_18
    if-lt v3, v11, :cond_1b

    .line 1276
    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_a

    .line 1279
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

    .line 1281
    add-int/2addr v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_a

    .line 1283
    :cond_1a
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1292
    :cond_1b
    :goto_a
    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v6

    if-ge v11, v14, :cond_21

    .line 1295
    const/16 v11, 0x3030

    if-ne v5, v11, :cond_20

    .line 1296
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    sub-int/2addr v11, v14

    .line 1297
    .local v11, "comparingHeight":I
    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v11, v12, :cond_1d

    .line 1298
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    .line 1299
    .end local v6    # "posY":I
    .local v12, "posY":I
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v19, v3

    .end local v3    # "displayFrameWidth":I
    .local v19, "displayFrameWidth":I
    sub-int v3, v11, v6

    move/from16 v22, v10

    .end local v10    # "posX":I
    .local v22, "posX":I
    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v3, v10, :cond_1c

    .line 1300
    add-int/2addr v12, v6

    move v6, v12

    goto :goto_c

    .line 1299
    :cond_1c
    move v6, v12

    goto :goto_c

    .line 1302
    .end local v12    # "posY":I
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .restart local v3    # "displayFrameWidth":I
    .restart local v6    # "posY":I
    .restart local v10    # "posX":I
    :cond_1d
    move/from16 v19, v3

    move/from16 v22, v10

    .end local v3    # "displayFrameWidth":I
    .end local v10    # "posX":I
    .restart local v19    # "displayFrameWidth":I
    .restart local v22    # "posX":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v11, v3, :cond_1f

    iget v3, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v10

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-le v3, v10, :cond_1e

    goto :goto_b

    .line 1306
    :cond_1e
    move v3, v14

    move v6, v3

    .end local v6    # "posY":I
    .local v3, "posY":I
    goto :goto_c

    .line 1304
    .end local v3    # "posY":I
    .restart local v6    # "posY":I
    :cond_1f
    :goto_b
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    move v6, v3

    .line 1308
    .end local v11    # "comparingHeight":I
    :goto_c
    move/from16 v10, v22

    goto/16 :goto_f

    .line 1309
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .local v3, "displayFrameWidth":I
    .restart local v10    # "posX":I
    :cond_20
    move/from16 v19, v3

    move/from16 v22, v10

    .end local v3    # "displayFrameWidth":I
    .end local v10    # "posX":I
    .restart local v19    # "displayFrameWidth":I
    .restart local v22    # "posX":I
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_f

    .line 1311
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .restart local v3    # "displayFrameWidth":I
    .restart local v10    # "posX":I
    :cond_21
    move/from16 v19, v3

    move/from16 v22, v10

    .end local v3    # "displayFrameWidth":I
    .end local v10    # "posX":I
    .restart local v19    # "displayFrameWidth":I
    .restart local v22    # "posX":I
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int v10, v6, v3

    if-le v10, v4, :cond_27

    .line 1312
    const/16 v3, 0x5050

    if-ne v5, v3, :cond_24

    .line 1313
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v3, v10, :cond_23

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_22

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v6

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v10, :cond_23

    :cond_22
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v3, v10

    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v10, :cond_23

    .line 1316
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v10

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int v6, v3, v10

    move/from16 v10, v22

    goto/16 :goto_f

    .line 1355
    :cond_23
    move/from16 v10, v22

    goto/16 :goto_f

    .line 1319
    :cond_24
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v3, v15, :cond_26

    .line 1320
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-nez v3, :cond_25

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v3, :cond_25

    .line 1321
    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v10

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v22

    goto :goto_f

    .line 1323
    :cond_25
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v3, v4, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v22

    goto :goto_f

    .line 1326
    :cond_26
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v3, v10

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v10, v22

    goto :goto_f

    .line 1330
    :cond_27
    const/16 v10, 0x3030

    if-ne v5, v10, :cond_28

    .line 1331
    if-ge v6, v14, :cond_29

    .line 1332
    add-int/2addr v3, v6

    add-int/2addr v3, v14

    iget v10, v1, Landroid/graphics/Rect;->top:I

    if-le v3, v10, :cond_29

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v10

    iget v10, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v10, :cond_29

    .line 1334
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v6, v3, v7

    goto :goto_d

    .line 1338
    :cond_28
    if-ge v6, v14, :cond_29

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v14, :cond_29

    .line 1339
    move v6, v14

    .line 1344
    :cond_29
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1345
    const/16 v3, 0x28

    .local v3, "bottomBarHeight":I
    goto :goto_e

    .line 1347
    .end local v3    # "bottomBarHeight":I
    :cond_2a
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    .line 1349
    .restart local v3    # "bottomBarHeight":I
    :goto_e
    if-eqz v3, :cond_23

    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v10, v11, :cond_23

    .line 1350
    iget v10, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int v6, v10, v11

    move/from16 v10, v22

    goto :goto_f

    .line 1251
    .end local v19    # "displayFrameWidth":I
    .end local v22    # "posX":I
    .local v3, "displayFrameWidth":I
    .restart local v10    # "posX":I
    :cond_2b
    move/from16 v19, v3

    .line 1355
    .end local v3    # "displayFrameWidth":I
    .restart local v19    # "displayFrameWidth":I
    :goto_f
    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 1356
    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 1357
    return-void

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

    .line 1580
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1586
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1587
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1595
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1596
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1597
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    .line 1599
    :cond_2
    return-void
.end method

.method private blacklist getDeviceRotation()I
    .locals 2

    .line 1670
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1671
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 4

    .line 1660
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1661
    .local v0, "hasNavigationBar":Z
    const/4 v1, 0x0

    .line 1663
    .local v1, "navigationBarHeight":I
    if-eqz v0, :cond_0

    .line 1664
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1666
    :cond_0
    return v1
.end method

.method private blacklist getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 353
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 354
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 358
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 359
    .local v2, "displaySize":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "SemHoverPopupWindow"

    if-nez v3, :cond_1

    .line 360
    const-string v3, "getApplicationContext() is null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 362
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 363
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 368
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v3, :cond_3

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    .line 373
    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v3, :cond_2

    .line 374
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

    .line 376
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

    .line 381
    :cond_2
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 382
    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 384
    :cond_3
    sget-object v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v3

    .line 388
    :cond_4
    sget-boolean v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v3, :cond_5

    .line 389
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

    .line 390
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

    .line 394
    :cond_5
    return-object v2
.end method

.method private blacklist getStateHashCode()I
    .locals 5

    .line 1628
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 1629
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1631
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1632
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x2

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1633
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1634
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1635
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1636
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 1638
    new-array v1, v4, [I

    .line 1639
    .local v1, "location":[I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1640
    const/4 v3, 0x0

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x14

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1642
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private blacklist getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 683
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final greylist hidden_TYPE_NONE()I
    .locals 1

    .line 1921
    const/4 v0, 0x0

    return v0
.end method

.method private static final greylist hidden_TYPE_TOOLTIP()I
    .locals 1

    .line 1930
    const/4 v0, 0x1

    return v0
.end method

.method private static final greylist hidden_TYPE_USER_CUSTOM()I
    .locals 1

    .line 1939
    const/4 v0, 0x3

    return v0
.end method

.method private greylist hidden_setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 1948
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 1949
    return-void
.end method

.method private greylist hidden_setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .line 1957
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    .line 1958
    return-void
.end method

.method private greylist hidden_setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1966
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    .line 1967
    return-void
.end method

.method private greylist hidden_update()V
    .locals 0

    .line 1975
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    .line 1976
    return-void
.end method

.method private blacklist initCoverManager()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 289
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 290
    if-nez v0, :cond_0

    .line 291
    const-string v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    return-void
.end method

.method private blacklist initInstance()V
    .locals 3

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    .line 252
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 254
    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 256
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 257
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 258
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 259
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 260
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 261
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 262
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 263
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 264
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 265
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getNavigationBarHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    .line 268
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 269
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 270
    const v2, 0x1030304

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 272
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 274
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 275
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 276
    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 277
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 278
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 279
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 280
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    .line 283
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 284
    return-void
.end method

.method private blacklist isEmbeddedMode()Z
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    .line 1691
    .local v0, "isActivityInEmbeddingState":I
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

    .line 341
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 342
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

.method private blacklist isHoveringSettingEnabled()Z
    .locals 1

    .line 401
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    packed-switch v0, :pswitch_data_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 405
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    return v0

    .line 403
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

    .line 454
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 455
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private blacklist isMouseHoveringSettingsEnabled()Z
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->semIsDesktopMode()Z

    move-result v0

    return v0

    .line 420
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isPopOver()Z
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    .line 1681
    .local v0, "isPopOver":Z
    return v0
.end method

.method private blacklist isSPenHoveringSettingsEnabled()Z
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private blacklist isTalkBackEnabledForDeX()Z
    .locals 3

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 441
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 441
    :goto_0
    return v1

    .line 444
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    return v1
.end method

.method private blacklist isViewCoverClose()Z
    .locals 4

    .line 465
    const/4 v0, 0x1

    .line 468
    .local v0, "isCoverOpen":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    move-object v2, v1

    .local v2, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 475
    .end local v2    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemHoverPopupWindow"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v1    # "e":Landroid/os/RemoteException;
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
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 853
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1

    .line 856
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 857
    .local v0, "widthMeasureSpec":I
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "heightMeasureSpec":I
    goto :goto_1

    .line 859
    .end local v0    # "widthMeasureSpec":I
    .end local v1    # "heightMeasureSpec":I
    :cond_1
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_2

    .line 860
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "widthMeasureSpec":I
    goto :goto_0

    .line 864
    .end local v0    # "widthMeasureSpec":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 867
    .restart local v0    # "widthMeasureSpec":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3

    .line 868
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightMeasureSpec":I
    goto :goto_1

    .line 871
    .end local v1    # "heightMeasureSpec":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 874
    .restart local v1    # "heightMeasureSpec":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 875
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 876
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 877
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 878
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_4

    .line 879
    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 880
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 881
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 883
    :cond_4
    return-void
.end method

.method private blacklist pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .line 1621
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 1622
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

    .line 1624
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

    .line 1621
    :goto_0
    return v0
.end method

.method private blacklist resetTimeout()V
    .locals 4

    .line 1646
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1647
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1657
    :cond_1
    return-void
.end method

.method private blacklist setPopupContent()V
    .locals 2

    .line 819
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 833
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 831
    :pswitch_0
    goto :goto_0

    .line 827
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    .line 828
    goto :goto_0

    .line 824
    :pswitch_2
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 825
    goto :goto_0

    .line 821
    :pswitch_3
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 822
    nop

    .line 837
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    .line 840
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

    .line 748
    const-string v0, "SemHoverPopupWindow"

    :try_start_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPopup() is cancelled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 753
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 759
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v1, :cond_2

    .line 765
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 768
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 770
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    .line 771
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 774
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 775
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    .line 776
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    goto :goto_1

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/lang/Exception;
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

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHoverPopup(), returned due to mPopup == null  "

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

    .line 1378
    return-void

    .line 1382
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1384
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_1

    .line 1388
    return-void

    .line 1392
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_2

    .line 1393
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 1395
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1398
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1403
    return-void

    .line 1406
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1407
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 1411
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1412
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_5

    .line 1417
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    .line 1419
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1422
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_1
    return-void
.end method


# virtual methods
.method protected blacklist createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 797
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 798
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 799
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 800
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 801
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 802
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 805
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 806
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setIsLaidOutInScreen(Z)V

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 810
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 1

    .line 1569
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    .line 1570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 1572
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    .line 1573
    return-void
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public blacklist getParentView()Landroid/view/View;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist isHoverPopupPossible()Z
    .locals 2

    .line 313
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    return v1

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    return v1

    .line 315
    :pswitch_2
    return v1

    .line 325
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

    .line 595
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

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

    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected blacklist makeDefaultContentView()V
    .locals 0

    .line 849
    return-void
.end method

.method public blacklist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1459
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1460
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1461
    .local v2, "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1467
    .local v3, "timeDelay":J
    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1532
    :pswitch_1
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v5, :cond_6

    .line 1539
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1540
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1542
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1543
    return v8

    .line 1469
    :pswitch_2
    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1473
    return v8

    .line 1476
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_6

    .line 1477
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_0

    .line 1481
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    .line 1483
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v9, :cond_4

    .line 1484
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v9

    .line 1486
    .local v9, "isPointInValidHoverArea":Z
    if-eqz v9, :cond_3

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_3

    .line 1491
    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 1496
    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1497
    return v8

    .line 1500
    :cond_2
    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1501
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 1502
    return v8

    .line 1503
    :cond_3
    if-nez v9, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v5, :cond_4

    .line 1509
    iput-boolean v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1510
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1511
    return v8

    .line 1519
    .end local v9    # "isPointInValidHoverArea":Z
    :cond_4
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 1520
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    .line 1526
    :cond_5
    return v8

    .line 1554
    :cond_6
    :goto_0
    return v7

    nop

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
    .param p1, "ms"    # I

    .line 1561
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1562
    return-void
.end method

.method public blacklist setAnimationStyle(I)V
    .locals 1
    .param p1, "aniStyle"    # I

    .line 1432
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 1433
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1436
    :cond_0
    return-void
.end method

.method public whitelist setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 542
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    return-void
.end method

.method public whitelist setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 559
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 560
    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 562
    return-void
.end method

.method public whitelist setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 575
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 577
    return-void
.end method

.method public blacklist setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .line 488
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 489
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 636
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 637
    return-void
.end method

.method public whitelist setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .line 604
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 605
    return-void
.end method

.method public blacklist setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 617
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 618
    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 619
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 620
    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 622
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    .line 624
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 626
    :cond_1
    return-void
.end method

.method public blacklist setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .line 531
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .line 532
    return-void
.end method

.method public blacklist setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 430
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 431
    return-void
.end method

.method public greylist setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 658
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 659
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 660
    return-void
.end method

.method protected blacklist setInstanceByType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 303
    return-void
.end method

.method public blacklist setNeedNotWindowOffset(Z)V
    .locals 0
    .param p1, "needNotWindowOffset"    # Z

    .line 669
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    .line 670
    return-void
.end method

.method public whitelist setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 646
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 647
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 648
    return-void
.end method

.method public whitelist setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 520
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 521
    return-void
.end method

.method public whitelist setTouchable(Z)V
    .locals 1
    .param p1, "isTouchable"    # Z

    .line 1445
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 1446
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1449
    :cond_0
    return-void
.end method

.method public whitelist show()V
    .locals 7

    .line 695
    sget-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show :"

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

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 705
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v1

    .line 707
    .local v1, "type":I
    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v1, v2, :cond_2

    .line 708
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 709
    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 713
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 714
    return-void

    .line 718
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

    .line 720
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

    .line 721
    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 722
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkBackEnabledForDeX()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 727
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    .line 730
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v3, :cond_6

    .line 731
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 736
    :cond_6
    new-instance v3, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 737
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 738
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 740
    return-void

    .line 723
    :cond_7
    :goto_1
    return-void
.end method

.method protected blacklist showPenPointEffect(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 1605
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1610
    if-eqz p1, :cond_0

    .line 1611
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 1612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0

    .line 1613
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_1

    .line 1614
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 1615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1618
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist update()V
    .locals 4

    .line 1363
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 1370
    :goto_1
    return-void
.end method
