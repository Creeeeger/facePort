.class public final Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowCaptionInputFallthrough:Z

.field public mApplyStartTransactionOnDraw:Z

.field public mCaptionHeightId:I

.field public mCaptionType:I

.field public mCaptionWidthId:I

.field public mCaptionX:I

.field public mCaptionY:I

.field public mCornerRadius:I

.field public final mDisplayExclusionRegion:Landroid/graphics/Region;

.field public mHorizontalInset:I

.field public mInputFeatures:I

.field public mInsetSourceFlags:I

.field public mLayoutResId:I

.field public mLimitTouchRegionToSystemAreas:Z

.field public final mOccludingCaptionElements:Ljava/util/List;

.field public mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mSetTaskPositionAndCrop:Z

.field public mShadowRadiusId:I

.field public mWindowDecorConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mDisplayExclusionRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLimitTouchRegionToSystemAreas:Z

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInsetSourceFlags:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mDisplayExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mSetTaskPositionAndCrop:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mWindowDecorConfig:Landroid/content/res/Configuration;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mHorizontalInset:I

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mAllowCaptionInputFallthrough:Z

    :cond_1
    return-void
.end method
