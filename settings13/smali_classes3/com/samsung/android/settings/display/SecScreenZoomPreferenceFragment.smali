.class public Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecScreenZoomPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;,
        Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;,
        Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# static fields
.field public static DENSITY_BASE_PIXEL:[F

.field private static mIsListenerRegistered:Z


# instance fields
.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mConvertRatio:F

.field protected mCurrentIndex:I

.field private mDefaultDensity:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

.field protected mInitialIndex:I

.field private mIsBottomButtonVisible:Z

.field private mIsFoldDevice:Z

.field private mIsLargerContent:Z

.field private mIsMultiPaneMode:Z

.field private mIsMultiWindowMode:Z

.field private mIsPopOver:Z

.field private mIsTabletDevice:Z

.field private mLarger:Landroid/view/View;

.field private mLargerContentButton:Landroid/widget/CompoundButton;

.field private mLargerContentMinIndex:I

.field private mLargerContentText:Landroid/widget/TextView;

.field private mLastCommitTime:J

.field private mMoreContentButton:Landroid/widget/CompoundButton;

.field private mMoreContentText:Landroid/widget/TextView;

.field private mOrientation:I

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

.field private mResources:Landroid/content/res/Resources;

.field private mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

.field private mSelectedColor:I

.field private mSmaller:Landroid/view/View;

.field private mUnSelectedColor:I

.field private mValues:[I


# direct methods
.method public static synthetic $r8$lambda$-fTXmZtBvGgp-4mdn5TKYkfgnoI(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$00wy5Xa-R6kyi7U0fgwwpGsSwnM(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4MxyBdSQ71OTf70DabDtSrz2V4o(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->registerControlListeners()V

    return-void
.end method

.method public static synthetic $r8$lambda$64yZ5pP81g_Svc8VM_Zkfb1zojY(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ge3ESBdQoMMPMEnW8l4scPxihBE(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RbcBDZ9bm0w68tWFgjqg19zguaw(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$6(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ThXEDzWJYgFZB8FFkKV5zUx_R0E(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$5(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sKbmP5GZNn3kMnrOA0pHY8ipzFg(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->lambda$generateContent$4(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLargerContent(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLargerContentMinIndex(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCommitTime(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewPagerAdapter(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastCommitTime(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcommit(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->commit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcommit(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->commit(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreviewLayer(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1ae14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 90
    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    return-void

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40700000    # 3.75f
        0x40800000    # 4.0f
        0x40880000    # 4.25f
        0x40900000    # 4.5f
    .end array-data

    :array_1
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    .line 121
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    return-void
.end method

.method private commit()V
    .locals 2

    .line 935
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    iget v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->commit(I)V

    return-void
.end method

.method private commit(I)V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget v0, v0, p1

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commit: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " densityDpi="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDefaultDensity:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 923
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 924
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 925
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 927
    iput p0, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method private destoryFragmentView()V
    .locals 4

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    sget p0, Lcom/android/settings/R$id;->ScreenZoomLayout:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "SecScreenZoomPreferenceFragment"

    if-eqz p0, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroyView: layout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "onDestroyView: layout has been removed."

    .line 356
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string v0, "SecScreenZoomPreferenceFragment"

    if-eqz p3, :cond_0

    const-string v1, "mLastCommitTime"

    .line 417
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateContent: mLastCommitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenZoomEvent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 426
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mOrientation:I

    .line 427
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMultiWindowMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->isMultiPaneMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    .line 429
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsPopOver:Z

    const/4 v1, 0x0

    .line 430
    sput-boolean v1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->getFragmentLayoutResId()I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContent:Landroid/view/View;

    .line 435
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz p2, :cond_2

    .line 436
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->generateContent(Landroid/view/View;Landroid/os/Bundle;)V

    return-object p1

    .line 446
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    .line 447
    iget-object p3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {p2, v1, p3}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 455
    fill-array-data p2, :array_0

    .line 456
    iget-object p3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p3

    .line 457
    aget p2, p2, p3

    iput p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mConvertRatio:F

    goto :goto_0

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 459
    iput p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mConvertRatio:F

    .line 466
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result p2

    .line 467
    iget-boolean p3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    const/4 v2, 0x1

    if-eqz p3, :cond_8

    move p3, v1

    .line 468
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v4, v3

    if-ge p3, v4, :cond_6

    .line 469
    aget v3, v3, p3

    if-ne p2, v3, :cond_4

    .line 470
    iput p3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInitialIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    if-nez v3, :cond_5

    .line 474
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget v5, v5, p3

    int-to-double v5, v5

    const-wide/high16 v7, 0x4064000000000000L    # 160.0

    div-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x258

    if-ge v3, v4, :cond_5

    .line 476
    iput p3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLargerContentMinIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 481
    :cond_6
    iget p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    iget p3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    if-lt p2, p3, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    goto :goto_5

    .line 483
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 484
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_9

    move v4, v2

    goto :goto_3

    :cond_9
    move v4, v1

    .line 487
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v5, v5

    new-array v5, v5, [Landroid/content/res/Configuration;

    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateContent: mValues.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v1

    .line 489
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v7, v7

    if-ge v6, v7, :cond_b

    .line 490
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v7

    aput-object v7, v5, v6

    .line 491
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget v7, v7, v6

    if-ne p2, v7, :cond_a

    .line 492
    iput v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 496
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object p2

    .line 497
    sget v3, Lcom/android/settings/R$id;->preview_pager:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 498
    new-instance v3, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    invoke-direct {v3, p3, v4, p2, v5}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    .line 500
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 501
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 505
    :goto_5
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz p2, :cond_c

    .line 506
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p2

    goto :goto_6

    .line 507
    :cond_c
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result p2

    :goto_6
    const/4 p3, -0x1

    const/16 v3, 0x8

    if-ne p2, p3, :cond_e

    .line 509
    sget p2, Lcom/android/settings/R$id;->screenSizeLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    move p2, v1

    goto :goto_8

    .line 511
    :cond_e
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz p2, :cond_10

    .line 512
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-eqz p2, :cond_f

    .line 513
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length p2, p2

    iget v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    sub-int/2addr p2, v4

    if-le p2, v2, :cond_d

    goto :goto_7

    .line 515
    :cond_f
    iget p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    if-le p2, v2, :cond_d

    :cond_10
    :goto_7
    move p2, v2

    :goto_8
    if-eqz p2, :cond_11

    .line 526
    sget v4, Lcom/android/settings/R$id;->seek_bar:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    iput-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    if-eqz v4, :cond_1c

    .line 528
    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v5, :cond_15

    .line 529
    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-eqz v5, :cond_12

    .line 530
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    iget v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    array-length v7, v5

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setLabels([III)V

    .line 531
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v5, v5

    iget v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 532
    iget v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    iget v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    goto :goto_a

    .line 534
    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    iget v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    invoke-virtual {v4, v5, v1, v6}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setLabels([III)V

    .line 535
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    :goto_a
    move v4, v1

    .line 537
    :goto_b
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_13

    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mValues["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 540
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mIsLargerContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLargerContentMinIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mValues.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mInitialIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentDensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    .line 542
    iget-boolean v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-eqz v6, :cond_14

    iget v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    iget v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentMinIndex:I

    add-int/2addr v6, v7

    goto :goto_c

    :cond_14
    iget v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    :goto_c
    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 543
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 545
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setLabels([I)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 548
    :goto_d
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setProgress(I)V

    .line 550
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v0, v0

    if-eq v0, v2, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_16

    sget-boolean v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-nez v0, :cond_17

    .line 553
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 560
    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-nez v0, :cond_1a

    .line 562
    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mOrientation:I

    if-ne v0, v2, :cond_18

    const/high16 v0, 0x438c0000    # 280.0f

    .line 563
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v0

    goto :goto_e

    .line 565
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/high16 v4, 0x440c0000    # 560.0f

    .line 566
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    int-to-float v0, v0

    add-float v4, v5, v0

    .line 568
    :goto_e
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_19

    move v0, v2

    goto :goto_f

    :cond_19
    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    goto :goto_10

    .line 570
    :cond_1a
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    .line 573
    :goto_10
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    if-eqz v0, :cond_1b

    .line 574
    sget v0, Lcom/android/settings/R$id;->smaller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 575
    sget v0, Lcom/android/settings/R$id;->larger:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    sget v0, Lcom/android/settings/R$id;->smaller_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    .line 578
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    sget v0, Lcom/android/settings/R$id;->larger_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    .line 580
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 582
    :cond_1b
    sget v0, Lcom/android/settings/R$id;->smaller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    .line 583
    sget v0, Lcom/android/settings/R$id;->larger:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    .line 586
    :goto_11
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    if-eqz v4, :cond_1c

    .line 587
    new-instance v4, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    :cond_1c
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v0, :cond_1e

    .line 614
    sget v0, Lcom/android/settings/R$id;->screenSizeLayoutContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1d

    move v3, v1

    .line 615
    :cond_1d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 617
    sget p2, Lcom/android/settings/R$id;->moreContentButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    .line 618
    sget p2, Lcom/android/settings/R$id;->largerContentButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    .line 620
    sget p2, Lcom/android/settings/R$id;->moreContentText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentText:Landroid/widget/TextView;

    .line 621
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$dimen;->sec_body_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 622
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setLimitedTextSize(Landroid/widget/TextView;I)V

    .line 623
    sget v0, Lcom/android/settings/R$id;->largerContentText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentText:Landroid/widget/TextView;

    .line 624
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setLimitedTextSize(Landroid/widget/TextView;I)V

    .line 626
    sget p2, Lcom/android/settings/R$id;->moreContentPreview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 627
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->ic_sec_screenzoom_more_content_preview:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    sget p2, Lcom/android/settings/R$id;->largerContentPreview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->ic_sec_screenzoom_larger_content_preview:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    sget p2, Lcom/android/settings/R$id;->moreContentLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 634
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 635
    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 650
    sget p2, Lcom/android/settings/R$id;->largerContentLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 651
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 652
    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 667
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$color;->sec_widget_multi_button_selected_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSelectedColor:I

    .line 668
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$color;->sec_widget_multi_button_unselected_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mUnSelectedColor:I

    .line 670
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->updateSelectedViewingType(Z)V

    .line 677
    :cond_1e
    sget p2, Lcom/android/settings/R$id;->fontSizeStyleLink:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_21

    .line 679
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_screen_zoom_top_font_description:I

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "11"

    aput-object v6, v5, v1

    const-string v7, "99"

    aput-object v7, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-static {v0, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 682
    invoke-static {v0, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-eq v2, p3, :cond_21

    if-eq v3, p3, :cond_21

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1f

    goto :goto_12

    :cond_1f
    move v9, v3

    move v3, v2

    move v2, v9

    :goto_12
    const-string p3, ""

    .line 690
    invoke-virtual {v0, v6, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {v0, v7, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v2, v2, -0x4

    .line 693
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_20

    .line 694
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 696
    :cond_20
    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    .line 707
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 708
    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 709
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$color;->sec_tips_description_link_text_color:I

    .line 710
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 709
    invoke-virtual {v4, p3, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 712
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 713
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    :cond_21
    :goto_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 720
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    const p3, 0x1020002

    .line 721
    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 800
    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz p2, :cond_22

    .line 801
    sget p2, Lcom/android/settings/R$id;->screenSelectLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_14

    .line 802
    :cond_22
    sget p2, Lcom/android/settings/R$id;->ScreenPreview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_14
    const/16 p3, 0xf

    .line 803
    invoke-virtual {p2, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 805
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 804
    invoke-virtual {p2, p3, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 811
    iget p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mInitialIndex:I

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setPreviewLayer(IZ)V

    .line 813
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->resetLayout(Landroid/view/View;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createScreenZoomView: RemoteException e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFragmentLayoutResId()I
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->getFragmentLayoutResId()I

    move-result p0

    return p0

    .line 896
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v0, :cond_2

    .line 897
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_fold_mw:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_fold:I

    :goto_0
    return p0

    .line 898
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsPopOver:Z

    if-eqz v0, :cond_4

    .line 899
    :cond_3
    sget p0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_tablet:I

    return p0

    .line 901
    :cond_4
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz p0, :cond_5

    sget p0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_mw:I

    goto :goto_1

    :cond_5
    sget p0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview:I

    :goto_1
    return p0
.end method

.method private getPreviewSampleResIds()[I
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 906
    sget v0, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_1:I

    const/4 v1, 0x0

    aput v0, p0, v1

    return-object p0
.end method

.method private getTitleResId()I
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_0

    .line 911
    sget p0, Lcom/android/settings/R$string;->font_preview_try_it_out_title:I

    return p0

    .line 912
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz p0, :cond_1

    .line 913
    sget p0, Lcom/android/settings/R$string;->sec_screen_zoom_top_title:I

    return p0

    .line 915
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_screen_zoom_title:I

    return p0
.end method

.method private isDexMode()Z
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isEasyMode()Z
    .locals 2

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_mode_switch"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isMultiPaneMode()Z
    .locals 1

    .line 1199
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$generateContent$0(Landroid/view/View;)V
    .locals 3

    .line 588
    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minus click: progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenZoomEvent"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$generateContent$1(Landroid/view/View;)V
    .locals 3

    .line 598
    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plus click: progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenZoomEvent"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$generateContent$2(Landroid/view/View;)V
    .locals 0

    .line 636
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 637
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->updateSelectedViewingType(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$generateContent$3(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKey: code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SecScreenZoomPreferenceFragment"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-eq p2, p1, :cond_0

    const/16 p1, 0x17

    if-ne p2, p1, :cond_1

    .line 645
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->updateSelectedViewingType(Z)V

    :cond_1
    return p3
.end method

.method private synthetic lambda$generateContent$4(Landroid/view/View;)V
    .locals 0

    .line 653
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 654
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->updateSelectedViewingType(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$generateContent$5(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKey: code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SecScreenZoomPreferenceFragment"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-eq p2, p1, :cond_0

    const/16 p1, 0x17

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 662
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->updateSelectedViewingType(Z)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$generateContent$6(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    .line 722
    sget v0, Lcom/android/settings/R$id;->ScreenZoomLayout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 723
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 726
    :cond_0
    sget v0, Lcom/android/settings/R$id;->dummy_navigation_bar_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_1
    sget v2, Lcom/android/settings/R$id;->dummy_navigation_bar_left:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 732
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :cond_2
    sget v3, Lcom/android/settings/R$id;->dummy_navigation_bar_right:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 736
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    :cond_3
    sget v1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 740
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v1, v4

    .line 741
    invoke-virtual {p3, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p3

    .line 743
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    const/4 v4, 0x0

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsPopOver:Z

    if-nez v1, :cond_b

    .line 744
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050244

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 746
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 747
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-eqz v5, :cond_8

    .line 748
    iget-boolean v8, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-nez v8, :cond_8

    const/4 v8, 0x2

    if-eq v6, v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    .line 750
    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    if-ne v5, v7, :cond_6

    if-eqz v6, :cond_5

    if-ne v6, p0, :cond_6

    :cond_5
    if-eqz v3, :cond_b

    .line 769
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 770
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 771
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 772
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 775
    iget p0, p3, Landroid/graphics/Insets;->left:I

    iget p1, p3, Landroid/graphics/Insets;->top:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2, p0, p1, v4, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 776
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_6
    if-ne v5, p0, :cond_b

    if-eqz v6, :cond_7

    if-ne v6, p0, :cond_b

    :cond_7
    if-eqz v2, :cond_b

    .line 782
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 783
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 784
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 785
    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 788
    iget p0, p3, Landroid/graphics/Insets;->top:I

    iget p1, p3, Landroid/graphics/Insets;->right:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2, v4, p0, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 789
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    :cond_8
    :goto_0
    if-eqz v0, :cond_b

    .line 752
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    goto :goto_1

    :cond_9
    move v7, v4

    :goto_1
    if-eqz v7, :cond_a

    .line 755
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x10504db

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_a
    move p0, v4

    .line 757
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v1, p0

    .line 758
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 759
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 762
    iget p0, p3, Landroid/graphics/Insets;->left:I

    iget p1, p3, Landroid/graphics/Insets;->top:I

    iget p3, p3, Landroid/graphics/Insets;->right:I

    invoke-virtual {p2, p0, p1, p3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 763
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 794
    :cond_b
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 795
    iget p0, p3, Landroid/graphics/Insets;->left:I

    iget p1, p3, Landroid/graphics/Insets;->top:I

    iget v0, p3, Landroid/graphics/Insets;->right:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2, p0, p1, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 796
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private registerControlListeners()V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    iget v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setProgress(I)V

    .line 822
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewSeekBarChangeListener-IA;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener-IA;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    if-eqz v3, :cond_2

    .line 826
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsLargerContent:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 827
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 828
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 830
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 831
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 833
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onViewingTypeCheckedChangeListener-IA;)V

    .line 835
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 836
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 838
    :cond_2
    sput-boolean v2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    return-void
.end method

.method private resetLayout(Landroid/view/View;)V
    .locals 12

    .line 1015
    iget v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1016
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1017
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050244

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1019
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 1021
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    .line 1020
    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 1021
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x10504db

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    .line 1022
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v8, 0x10504cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 1025
    iget-object v8, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mConvertRatio:F

    mul-float/2addr v9, v10

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    if-nez v0, :cond_4

    .line 1026
    iget-boolean v9, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v9, :cond_3

    goto :goto_3

    .line 1028
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    goto :goto_4

    .line 1027
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v9, v4

    add-int/2addr v9, v7

    int-to-float v7, v9

    :goto_4
    cmpg-float v9, v8, v7

    if-gez v9, :cond_5

    goto :goto_5

    :cond_5
    move v8, v7

    :goto_5
    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v8, v7

    .line 1041
    iget-boolean v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-nez v7, :cond_a

    .line 1043
    iget-boolean v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-eqz v7, :cond_8

    .line 1044
    iget-boolean v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsPopOver:Z

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_9

    .line 1049
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/settings/R$dimen;->sec_screen_zoom_fragment_preview_pager_height_percent_tablet:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    goto :goto_7

    .line 1046
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/settings/R$dimen;->sec_screen_zoom_fragment_preview_pager_height_percent:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    goto :goto_7

    :cond_8
    if-eqz v0, :cond_9

    .line 1053
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/settings/R$dimen;->sec_screen_zoom_fragment_preview_pager_height_percent:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    goto :goto_7

    :cond_9
    move v7, v2

    :goto_7
    if-lez v7, :cond_a

    .line 1059
    sget v9, Lcom/android/settings/R$id;->preview_pager_layout:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1060
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 1061
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1062
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    if-eqz v7, :cond_1d

    .line 1067
    sget v7, Lcom/android/settings/R$id;->screenSize:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1068
    iget-boolean v9, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v9, :cond_b

    .line 1069
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/settings/R$dimen;->sec_font_size_and_screen_zoom_seekbar_title_text_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1071
    invoke-direct {p0, v7, v9}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->setLimitedTextSize(Landroid/widget/TextView;I)V

    .line 1075
    :cond_b
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1076
    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v10, :cond_c

    .line 1077
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_title_height_multi_window:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9

    .line 1079
    :cond_c
    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-eqz v10, :cond_f

    .line 1080
    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    if-nez v10, :cond_e

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsPopOver:Z

    if-eqz v10, :cond_d

    goto :goto_8

    .line 1083
    :cond_d
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_title_height_tablet:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9

    .line 1081
    :cond_e
    :goto_8
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_title_height:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_9

    .line 1086
    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_title_height:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1089
    :goto_9
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_11

    const/4 v11, 0x3

    if-eq v7, v11, :cond_11

    if-nez v3, :cond_10

    goto :goto_a

    :cond_10
    move v1, v2

    .line 1099
    :cond_11
    :goto_a
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v2, :cond_14

    if-eqz v1, :cond_13

    if-eqz v5, :cond_12

    .line 1103
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_fold_gesture_taskbar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_c

    .line 1107
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_fold_gesture:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_c

    .line 1112
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_fold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_c

    .line 1115
    :cond_14
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-eqz v2, :cond_17

    .line 1116
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiPaneMode:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsPopOver:Z

    if-nez v2, :cond_16

    if-eqz v1, :cond_15

    goto :goto_b

    .line 1123
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_c

    .line 1119
    :cond_16
    :goto_b
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_tablet_gesture:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_c

    :cond_17
    if-eqz v1, :cond_18

    .line 1129
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_gesture:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_c

    .line 1133
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    :goto_c
    mul-float/2addr v8, v2

    float-to-int v2, v8

    .line 1142
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/settings/R$dimen;->sec_widget_list_icon_create_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    if-nez v0, :cond_1a

    .line 1144
    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    if-nez v5, :cond_1a

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-nez v5, :cond_1a

    if-ne v7, v10, :cond_19

    goto :goto_d

    .line 1151
    :cond_19
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    goto :goto_e

    .line 1146
    :cond_1a
    :goto_d
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v4

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 1157
    :goto_e
    iget-boolean v4, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v4, :cond_1b

    .line 1158
    sget v1, Lcom/android/settings/R$id;->screenSizeLayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1159
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1160
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_screen_zoom_seekbar_container_height_multiwindow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1162
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_1d

    .line 1166
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsBottomButtonVisible:Z

    if-eqz p1, :cond_1d

    .line 1167
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$dimen;->sec_screen_zoom_seekbar_layout_margin_for_multiwindow_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 1170
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1171
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1172
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1173
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 1177
    :cond_1b
    sget p0, Lcom/android/settings/R$id;->screenSizeLayoutContainer:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1180
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v1, :cond_1c

    .line 1182
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1184
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    :goto_f
    return-void
.end method

.method private setLimitedTextSize(Landroid/widget/TextView;I)V
    .locals 2

    .line 1203
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3f99999a    # 1.2f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, p0

    const/4 p0, 0x0

    mul-float/2addr p2, v0

    .line 1206
    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private setPreviewLayer(IZ)V
    .locals 4

    .line 956
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSmaller:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 957
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 958
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 961
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPagerAdapter:Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;

    if-eqz v0, :cond_3

    .line 962
    iget v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 963
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    .line 962
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/samsung/android/settings/display/SecPreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    .line 966
    :cond_3
    iput p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPreviewLayer: mCurrentIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenZoomEvent"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterControlListeners()V
    .locals 3

    const/4 v0, 0x0

    .line 842
    sput-boolean v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsListenerRegistered:Z

    .line 844
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 846
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSeekBar:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 848
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    if-eqz v2, :cond_1

    .line 849
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 850
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method private updateSelectedViewingType(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 856
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 857
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 859
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mUnSelectedColor:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 860
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 861
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSelectedColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 864
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 865
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 867
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentText:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mSelectedColor:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 868
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 869
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentText:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mUnSelectedColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 870
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 872
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mMoreContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 873
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLargerContentButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 404
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d18

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 363
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: dualDisplayStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecScreenZoomPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 375
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 380
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContent:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mResources:Landroid/content/res/Resources;

    .line 287
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->create(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/settings/display/SecFontTrialSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->invalid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    .line 295
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsTabletDevice:Z

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: Density length="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mIsFoldDevice:Z

    if-eqz p1, :cond_1

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    d0="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " d1="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " d2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mValues:[I

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->getTitleResId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 411
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->generateContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 326
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->release()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 343
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->destoryFragmentView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 316
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SecScreenZoomPreferenceFragment"

    const-string v1, "onResume"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    .line 319
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 385
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mFontTrial:Lcom/samsung/android/settings/display/SecFontTrialSettings;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/SecFontTrialSettings;->saveInstanceState(Landroid/os/Bundle;)V

    return-void

    .line 394
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->mLastCommitTime:J

    const-string p0, "mLastCommitTime"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 878
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 882
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->registerControlListeners()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 887
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 889
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->unregisterControlListeners()V

    return-void
.end method
