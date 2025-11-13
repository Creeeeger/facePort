.class public Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static sConfigured:Z

.field public static sFlipFont:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActionBar:Landroid/widget/LinearLayout;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mApplyBtn:Landroid/widget/Button;

.field public mAutoRadioButton:Landroid/widget/RadioButton;

.field public mCancelBtn:Landroid/widget/Button;

.field public mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

.field public mColorGridView:Landroid/widget/GridView;

.field public mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

.field public mColorRadioButton:Landroid/widget/RadioButton;

.field public final mColorSetListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

.field public mColorTabLayout:Landroid/widget/LinearLayout;

.field public mCurDuration:I

.field public mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

.field public mCurThickness:I

.field public mCurTransparency:I

.field public final mEdgeLightingCallBack:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

.field public mEdgeLightingEffectColumn:I

.field public final mEffectAccessibilityDelegate:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

.field public mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

.field public mEffectGridView:Landroid/widget/GridView;

.field public final mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

.field public mIsShowAppIcon:Z

.field public mIsStartByRoutine:Z

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

.field public mMainRoundedLayout:Landroid/widget/RelativeLayout;

.field public final mOnTouchListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

.field public final mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

.field public mPreviewMode:Z

.field public final mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

.field public mRootLayout:Landroid/widget/RelativeLayout;

.field public mRoutineEffectColor:I

.field public mSelectedColor:Ljava/lang/Integer;

.field public mSelectedColorIndex:I

.field public mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

.field public mSubOptionColorLayout:Landroid/view/ViewGroup;

.field public mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

.field public mSubOptionRoot:Landroid/widget/RelativeLayout;

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final mTabListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

.field public mType:I


# direct methods
.method public static -$$Nest$msetDynamicWidth(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1, v0, v0}, Landroid/widget/GridView;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v0

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, v0

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static -$$Nest$mupdatePreviewEdgeLighting(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-object v0, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v2, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(ILandroid/content/Context;)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    iput v0, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    iput v2, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " updatePreviewEdgeLighting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iget v2, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-interface {v0, p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-class v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const-string v0, "EdgeLightingStyleActivity"

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    new-instance v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOnTouchListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorSetListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAccessibilityDelegate:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

    return-void
.end method


# virtual methods
.method public final calculateColumnCount(Landroid/widget/GridView;I)I
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07138c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071391

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v2, v2}, Landroid/widget/GridView;->measure(II)V

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07137e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    :cond_1
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    if-gt p2, p0, :cond_2

    return p2

    :cond_2
    mul-int/lit8 p1, p0, 0x2

    if-gt p2, p1, :cond_3

    return p0

    :cond_3
    rem-int/lit8 p0, p2, 0x2

    if-nez p0, :cond_4

    div-int/lit8 p2, p2, 0x2

    return p2

    :cond_4
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public final getCustomColor(Z)I
    .locals 1

    const v0, -0xb37941

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "edgelighting_custom_color"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getEdgeLightingColor()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez v0, :cond_0

    const p0, -0xb37941

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final hideBottomBarSubOption(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    :cond_3
    return v1
.end method

.method public final hidePreviewEdgeLighting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->stopPreview()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    :cond_0
    return-void
.end method

.method public final hidePreviewEdgeLighting(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hidePreviewEdgeLighting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0a0523

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->getTitleStringID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0ae3

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0ae4

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0ae0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    const/4 p4, 0x5

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    invoke-virtual {p2, p5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    new-instance p4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;

    invoke-direct {p4, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object p4, p2, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    sget-object p4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f130589

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f13058a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f1305ba

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0c2d

    if-ne v0, v1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v5, p0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v6}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sendCurrentSettingToRoutine() data=["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    aget-object v4, p1, v4

    const-string v6, "effect_key"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, p1, v3

    const-string v4, "color_key"

    invoke-virtual {v5, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p1, v2

    const-string/jumbo v3, "transparency_key"

    invoke-virtual {v5, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, p1, v1

    const-string/jumbo v2, "thickness_key"

    invoke-virtual {v5, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    aget-object v1, p1, v1

    const-string v2, "duration_key"

    invoke-virtual {v5, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p1, v0

    const-string v0, "color_value_key"

    invoke-virtual {v5, v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    invoke-direct {p1, v5}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "intent_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v6}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "EdgeLightingSaveStyleInfo,"

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Effect="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v6}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v6, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v5, v6}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v5

    const-string v6, ","

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-static {v5, v7}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;I)V

    iget v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x63

    if-ne v5, v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x64

    if-ne v5, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    :goto_0
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Color="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v1, v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    const-string v5, "edge_lighting_thickness"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Width="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v3, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingWidth(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v1, v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    const-string v5, "edge_lighting_transparency"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Transparency="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    int-to-float v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v1, v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "edge_lighting_duration"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "edgelighting_pref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/Utils;->getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "36105"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/Utils;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "36106"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    div-int/2addr v2, v0

    const-string v0, "36107"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "36108"

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "36110"

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0c2e

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    iput-object p1, v0, Landroidx/picker3/app/SeslColorPickerDialog;->mCurrentColor:Ljava/lang/Integer;

    iget-object v0, v0, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorInfo:Landroidx/picker3/widget/SeslRecentColorInfo;

    iput-object p1, v1, Landroidx/picker3/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroidx/picker3/widget/SeslColorPicker;->updateRecentColorLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateLayout$5()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->initEdgeLightingAnalyticsStates(Landroid/app/Application;)V

    sput-boolean v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    :cond_0
    sget p1, Lcom/android/systemui/edgelighting/Constants;->$r8$clinit:I

    const-string p1, "com.samsung.android.app.routines"

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    const p1, 0x7f0d0425

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const v1, 0x106000c

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "show_notification_app_icon"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsShowAppIcon:Z

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initColorTypeIndex(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "edge_lighting_thickness"

    const/4 v5, -0x2

    invoke-static {p1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "edge_lighting_transparency"

    invoke-static {p1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v6, "intent_params"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v6, p1, v3

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, p1, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v9, p1, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    aget-object p1, p1, v10

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iput-object v10, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v10

    :goto_2
    iput-object v10, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iput v7, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    iput v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    iput v9, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    iget-object v10, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v11, "loadRoutineEdgeLightingSetting() : type="

    const-string v12, ",color="

    const-string v13, ",alpha="

    invoke-static {v7, v11, v6, v12, v13}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",width="

    const-string v11, ",time="

    invoke-static {v6, v8, v7, v2, v11}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",colorValue="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v2, "loadRoutineEdgeLightingSetting() : set default"

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    const p1, 0x7f0a0689

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0891

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p1, 0x7f0a0069

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0c2d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    const p1, 0x7f0a0c2e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    const p1, 0x7f0a0c2f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionRoot:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a068a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07136c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const p1, 0x7f0a0ceb

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const v1, 0x7f0600e4

    const v2, 0x7f08072d

    const v6, 0x7f0a052c

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0600e5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v2, v1, :cond_b

    iput-object v1, p1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    :goto_4
    if-ge v2, v1, :cond_b

    iget-object v5, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    :cond_a
    add-int/2addr v2, v0

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOnTouchListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0c41

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    const p1, 0x7f0a0c40

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    invoke-virtual {p1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    const p1, 0x7f0a0c3e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    const p1, 0x7f0a02b3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0c3d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setSmoothScrollbarEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    const p1, 0x7f0a0127

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    const p1, 0x7f0a02b1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRadioButtonListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a0c3c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateLayout$5()V

    const/16 p1, 0x12c

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarOption(I)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->stopPreview()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->unRegisterEdgeWindowCallback()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 14

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1305be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1305bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3c

    const v4, 0x7f0a0d9f

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1305b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1305b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    const v10, 0x7f0a0eb0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130586

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130585

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const v2, 0x7f0a03db

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "36014"

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v1, :cond_0

    sget v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sFlipFont:I

    if-eq v2, v1, :cond_0

    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    sput v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sFlipFont:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    return-void
.end method

.method public final playEdgeLightingByHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    return-void
.end method

.method public final showBottomBarLayout(I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, -0x803

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07136c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    new-array v7, v2, [F

    aput v3, v7, v4

    aput v6, v7, v1

    const-string/jumbo v8, "translationY"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x12c

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v7, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    new-array v12, v2, [F

    fill-array-data v12, :array_0

    const-string v13, "alpha"

    invoke-static {v7, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v14, 0x96

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v12, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v11, v2, [F

    aput v3, v11, v4

    aput v6, v11, v1

    invoke-static {v12, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move/from16 v9, p1

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3e2e147b    # 0.17f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v11, v11, v10, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v3, v9, v4

    aput-object v5, v9, v1

    aput-object v6, v9, v2

    const/4 v1, 0x3

    aput-object v7, v9, v1

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final showBottomBarOption(I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateTabLayout()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_a

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    if-nez p1, :cond_9

    new-instance p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, v0

    :goto_0
    sget-boolean v6, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    if-eqz v6, :cond_0

    if-nez v3, :cond_0

    iget-object v6, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    const-string v10, "preload/heart"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "preload/fireworks"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "preload/eclipse"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    :goto_3
    add-int/lit8 p1, v5, 0x1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->calculateColumnCount(Landroid/widget/GridView;I)I

    move-result v2

    if-le p1, v2, :cond_6

    sub-int v3, p1, v2

    goto :goto_4

    :cond_6
    move v3, p1

    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v1, :cond_7

    sub-int v3, v2, v5

    if-le p1, v2, :cond_7

    add-int/2addr v2, v3

    move v3, v2

    :cond_7
    sub-int/2addr v3, v1

    if-ltz v3, :cond_8

    move p1, v3

    goto :goto_5

    :cond_8
    move p1, v0

    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071369

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :goto_6
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_a
    if-ne p1, v1, :cond_e

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    if-eq v2, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    if-nez p1, :cond_b

    new-instance p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_c
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez p1, :cond_d

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_a

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_a

    :cond_e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    if-eq v2, v1, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result p1

    const v1, 0x7f0a0d9f

    const/16 v2, 0x8

    if-eqz p1, :cond_f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result p1

    const v1, 0x7f0a0eb0

    if-eqz p1, :cond_10

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result p1

    const v1, 0x7f0a03db

    if-eqz p1, :cond_11

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_12
    :goto_a
    return-void
.end method

.method public final showColorPickerDialog()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edgelighting_recently_used_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    move v2, v7

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_3
    new-instance v8, Landroidx/picker3/app/SeslColorPickerDialog;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorSetListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;I[IZ)V

    iput-object v8, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    iget-object v1, v8, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    const v2, 0x7f0a0b27

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mEyeDropperView:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    new-instance v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    iget-object v1, v1, Landroidx/picker3/app/SeslColorPickerDialog;->mColorPicker:Landroidx/picker3/widget/SeslColorPicker;

    new-instance v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v2, v1, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    invoke-interface {v1, v2}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    :goto_4
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    :cond_5
    return-void
.end method

.method public final showPreviewEdgeLighting([I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setForceSettingValue(Ljava/lang/String;)V

    const v0, 0x7f13058c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsShowAppIcon:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f08067f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-boolean v4, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsUsingAppIcon:Z

    goto :goto_0

    :cond_0
    const v0, 0x7f080b1a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsUsingAppIcon:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v5, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(ILandroid/content/Context;)F

    move-result v2

    iget v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    iput v2, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    iput v5, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-object p1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iput v2, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " showPreview : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput p1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    invoke-static {}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    :cond_2
    instance-of p1, v1, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    if-eqz p1, :cond_4

    check-cast v1, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    iget-object p1, v1, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSpecialEffect:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput p1, v0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iput-boolean v3, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    xor-int/2addr p0, v4

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V

    return-void
.end method

.method public final updateLayout$5()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07138c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071391

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x168

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x800003

    :cond_3
    :goto_2
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public final updateTabLayout()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsShowAppIcon:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "preload/noframe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "preload/reflection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method
