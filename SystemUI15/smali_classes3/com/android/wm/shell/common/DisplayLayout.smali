.class public final Lcom/android/wm/shell/common/DisplayLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCutout:Landroid/view/DisplayCutout;

.field public mDensityDpi:I

.field public mHasNavigationBar:Z

.field public mHasStatusBar:Z

.field public mHeight:I

.field public final mImmersiveStableInsets:Landroid/graphics/Rect;

.field public mInsetsState:Landroid/view/InsetsState;

.field public mNavBarFrameHeight:I

.field public final mNaviStarStableInsets:Landroid/graphics/Rect;

.field public mNavigationBarCanMove:Z

.field public final mNonDecorInsets:Landroid/graphics/Rect;

.field public mReverseDefaultRotation:Z

.field public mRotation:I

.field public final mStableInsets:Landroid/graphics/Rect;

.field public final mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mUiMode:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v3, 0x1

    if-nez v1, :cond_4

    const-string/jumbo v4, "qemu.hw.mainkeys"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move p1, v0

    goto :goto_3

    :cond_1
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_0
    move p1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x1110226

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_3

    :cond_4
    iget v4, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    iget v4, v2, Landroid/view/DisplayInfo;->ownerUid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "force_desktop_mode_on_external_displays"

    invoke-static {p1, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_2

    if-eqz p1, :cond_0

    if-nez v4, :cond_0

    goto :goto_0

    :goto_3
    if-nez v1, :cond_7

    move v0, v3

    :cond_7
    invoke-virtual {p0, v2, p2, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/common/DisplayLayout;->init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public static navigationBarPosition(Landroid/content/res/Resources;III)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_2

    const v0, 0x11101e7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-le p1, p2, :cond_2

    const/4 p0, 0x1

    if-ne p3, p0, :cond_1

    const/4 p0, 0x2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method public final density()F
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    int-to-float p0, p0

    const v0, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getDisplayBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getStableBounds(Landroid/graphics/Rect;Z)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final hashCode()I
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    move-object/from16 v16, v0

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iput-boolean p3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    const p1, 0x1110023

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    const p1, 0x11101e7

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    const p1, 0x1110210

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public final isLandscape()Z
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recalcInsets(Landroid/content/res/Resources;)V
    .locals 11

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    iget v5, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget-object v6, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    invoke-virtual {v4, v7, v10, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {p1, v1, v2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result v0

    const/4 v7, 0x1

    if-le v1, v2, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    and-int/lit8 v2, v5, 0xf

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    if-ne v0, v8, :cond_2

    if-eqz v1, :cond_1

    const v1, 0x10502cc

    goto :goto_1

    :cond_1
    const v1, 0x10502ca

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_2
    const v1, 0x10502cf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_3
    if-ne v0, v8, :cond_5

    if-eqz v1, :cond_4

    const v1, 0x10502cb

    goto :goto_2

    :cond_4
    const v1, 0x10502c9

    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_5
    const v1, 0x10502ce

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3
    if-ne v0, v8, :cond_6

    iget v0, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget v0, v4, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_7
    if-ne v0, v7, :cond_9

    iget v0, v4, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v4, v0, v1, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v6, Landroid/graphics/Rect;->left:I

    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v6, Landroid/graphics/Rect;->top:I

    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v6, Landroid/graphics/Rect;->right:I

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_TASK_POSITIONER:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget-boolean v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_d

    const v1, 0x1050568

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    :cond_d
    if-nez v1, :cond_e

    move v1, v9

    goto :goto_5

    :cond_e
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    :goto_5
    const v2, 0x1050569

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6

    :cond_f
    invoke-static {p1, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v1

    :goto_6
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_10
    :goto_7
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, v1, :cond_11

    const v0, 0x10502c5

    goto :goto_8

    :cond_11
    const v0, 0x10502c4

    :goto_8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v3, v1, v9}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_13
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p1

    if-ne p1, v8, :cond_14

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    if-lez p1, :cond_14

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_14
    return-void
.end method

.method public final rotateTo(Landroid/content/res/Resources;I)V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    sub-int v3, p2, v2

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0, v1, v2, p2}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public final set(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 5

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget-object v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final stableInsets(Z)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n{ mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNonDecorInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT:Z

    if-eqz v1, :cond_0

    const-string v1, ", mStableInsetsWithoutCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsIgnoringCutout:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", mHasNavigationBar="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImmersiveStableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNaviStarStableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNaviStarStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
