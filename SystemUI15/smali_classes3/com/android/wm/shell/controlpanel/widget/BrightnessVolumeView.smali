.class public Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final mIsFold:Z


# instance fields
.field public final AI_SPEAKER_GALAXY_HOME_MINI:S

.field public final GALAXY_BUDS:S

.field public final GALAXY_BUDS3:S

.field public final GALAXY_BUDS_LIVE:S

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBrightnessIcon:Landroid/widget/ImageView;

.field public final mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

.field public final mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mBrightnessSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;

.field public final mContext:Landroid/content/Context;

.field public mCurrentMediaIconState:I

.field public mCurrentRingerMode:I

.field public mCurrentRingtoneIconState:I

.field public mCurrentVolumeLevel:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mGetRingerMode:I

.field public mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

.field public final mMaxBrightness:I

.field public final mMediaBrightnessLayout:Landroid/widget/LinearLayout;

.field public final mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

.field public final mMediaVolumeLayout:Landroid/widget/FrameLayout;

.field public final mMinBrightness:I

.field public final mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

.field public final mMute:Landroid/widget/ImageView;

.field public final mNote:Landroid/widget/ImageView;

.field public final mSplash:Landroid/widget/ImageView;

.field public mStreamType:I

.field public final mTouchSlop:I

.field public final mVolumeIcon:Landroid/widget/ImageView;

.field public final mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

.field public final mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public final mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;

.field public mVolumeSeekBarScale:F

.field public mVolumeSeekBarStartTouch:F

.field public final mVolumeSeekBarTouchListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

.field public mVolumeSeekBarTracking:Z

.field public final mWaveL:Landroid/widget/ImageView;

.field public final mWaveS:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mIsFold:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    iput v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    const/16 v0, 0x1503

    iput-short v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->GALAXY_BUDS:S

    const/16 v0, 0x1504

    iput-short v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->GALAXY_BUDS_LIVE:S

    const/16 v0, 0x1505

    iput-short v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->GALAXY_BUDS3:S

    const/16 v0, 0x2802

    iput-short v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->AI_SPEAKER_GALAXY_HOME_MINI:S

    new-instance v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    new-instance v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    new-instance v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTouchListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mTouchSlop:I

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "accessibility"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    invoke-direct {v3, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BrightnessVolumeView mStreamType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentRingerMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessVolumeView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0068

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0a06c4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a06c5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const v2, 0x7f0a06f7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a06f5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a06f8

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const v2, 0x7f0a01cd

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a0e4b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a0e52

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    const v2, 0x7f0a0e53

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    const v2, 0x7f0a0e54

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    const v2, 0x7f0a0e51

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    const v2, 0x7f0a0e4d

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/os/PowerManager;->semGetMaximumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->semGetMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, v1, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const-wide v2, 0x400f333333333333L    # 3.9

    const-wide/16 v4, 0x0

    const-wide v6, 0x401ccccccccccccdL    # 7.2

    const-wide/16 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    const v0, 0x7f0a045b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide v2, 0x401ccccccccccccdL    # 7.2

    const-wide/16 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    const v0, 0x7f0a045c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->setRatioPadding(Landroid/content/Context;Landroid/view/View;DDDD)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultBrightnessView()V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultVolumeIcon()V

    return-void
.end method


# virtual methods
.method public final handlerExcute(Ljava/lang/Runnable;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final setBrightnessViewColor(I)V
    .locals 2

    const/16 v0, 0xd9

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v1, 0x7f06006e

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v0, 0x7f06006f

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultBrightnessView()V

    :goto_0
    return-void
.end method

.method public final setDefaultBrightnessView()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f060556

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f0606b0

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v1, 0x7f0606ae

    invoke-static {v1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setDefaultVolumeIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v1, 0x7f080abd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setVolumeIcon(I)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f060556

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    move/from16 v2, p1

    iput v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BrightnessVolumeView setVolumeIcon mStreamType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mGetRingerMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    const-string v4, "BrightnessVolumeView"

    invoke-static {v3, v4, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_28

    const/16 v3, 0x10

    if-eq v2, v3, :cond_27

    const/4 v3, 0x1

    const/16 v5, 0x64

    const v6, 0x7f080abc

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, -0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080a77

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    :cond_0
    if-nez v1, :cond_29

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080a74

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080a76

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    :pswitch_1
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080abd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    :pswitch_2
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v2

    if-eq v2, v8, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v11

    :goto_0
    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v13, 0x7f0606b0

    invoke-static {v13, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iget-object v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v14, 0x7f0606ae

    invoke-static {v14, v13}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v13

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v14

    sub-int/2addr v14, v3

    mul-int/2addr v14, v5

    add-int/lit8 v14, v14, 0x9

    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v15, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-lez v14, :cond_5

    mul-int/2addr v2, v5

    if-ge v14, v2, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f06006e

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v5, 0x7f06006f

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v13

    :cond_5
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v1

    const-string/jumbo v2, "setVolumeIcon currentDeviceType : "

    invoke-static {v1, v2, v4}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v1, v10, :cond_1b

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1b

    if-ne v1, v9, :cond_6

    goto/16 :goto_a

    :cond_6
    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f081473

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    :cond_7
    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    if-ne v1, v7, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v14, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    if-nez v5, :cond_9

    move/from16 v20, v3

    goto :goto_1

    :cond_9
    move/from16 v20, v11

    :goto_1
    const/16 v17, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v12 .. v20}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    move v10, v11

    goto/16 :goto_c

    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-gt v1, v10, :cond_c

    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    const/4 v10, 0x1

    if-ne v6, v10, :cond_b

    move/from16 v21, v3

    goto :goto_2

    :cond_b
    move/from16 v21, v11

    :goto_2
    const/16 v18, 0x0

    move v14, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_c

    :cond_c
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-le v1, v10, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-gt v1, v7, :cond_e

    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    const/4 v10, 0x2

    if-ne v6, v10, :cond_d

    move/from16 v21, v3

    goto :goto_3

    :cond_d
    move/from16 v21, v11

    :goto_3
    const/16 v18, 0x0

    move v14, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_c

    :cond_e
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v9, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    if-ne v9, v10, :cond_f

    move/from16 v30, v3

    goto :goto_4

    :cond_f
    move/from16 v30, v11

    :goto_4
    const/16 v27, 0x0

    move-object/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    invoke-virtual/range {v22 .. v30}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_c

    :cond_10
    :goto_5
    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    array-length v5, v4

    move v6, v11

    :goto_6
    const/4 v10, 0x0

    if-ge v6, v5, :cond_12

    aget-object v13, v4, v6

    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    if-ne v14, v1, :cond_11

    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    if-eq v14, v2, :cond_13

    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    if-ne v14, v7, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_12
    move-object v13, v10

    :cond_13
    :goto_7
    if-eqz v13, :cond_1c

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object v10, v4

    :cond_15
    if-eqz v10, :cond_1c

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerDeviceIconIndex()[B

    move-result-object v1

    if-eqz v1, :cond_16

    array-length v4, v1

    if-lt v4, v8, :cond_16

    aget-byte v4, v1, v11

    shl-int/lit8 v2, v4, 0x8

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_8

    :cond_16
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget-short v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->GALAXY_BUDS3:S

    if-ne v1, v2, :cond_17

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f08146e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_17
    iget-short v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->GALAXY_BUDS:S

    if-eq v1, v2, :cond_1a

    iget-short v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->GALAXY_BUDS_LIVE:S

    if-ne v1, v2, :cond_18

    goto :goto_9

    :cond_18
    iget-short v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->AI_SPEAKER_GALAXY_HOME_MINI:S

    if-ne v1, v2, :cond_19

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f08092a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_19
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f08080f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_1a
    :goto_9
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f08146f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_1b
    :goto_a
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f081486

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    :goto_b
    move v10, v12

    :goto_c
    iput v10, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentMediaIconState:I

    goto/16 :goto_12

    :pswitch_3
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v13, 0x7f08081c

    invoke-virtual {v4, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v13, 0x7f08081b

    invoke-virtual {v4, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    if-ne v1, v3, :cond_1e

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v3, 0x7f080abe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    iget v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    if-eq v3, v4, :cond_1d

    iget-object v3, v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0703e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0703e1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v4, v3

    const/16 v6, 0x3c

    const/4 v7, 0x0

    invoke-static {v2, v7, v4, v6}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v6

    sub-float v8, v3, v1

    const/16 v9, 0x50

    invoke-static {v2, v4, v8, v9}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v1, v9

    sub-float/2addr v3, v1

    neg-float v1, v3

    invoke-static {v2, v8, v1, v5}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v3

    const/16 v5, 0x78

    invoke-static {v2, v1, v7, v5}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_d

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_1e
    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    :goto_d
    move v10, v12

    goto/16 :goto_11

    :cond_20
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeAnimatedIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_22

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-gt v1, v10, :cond_22

    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_21

    move/from16 v21, v3

    goto :goto_e

    :cond_21
    move/from16 v21, v11

    :goto_e
    move v14, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_11

    :cond_22
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-le v1, v10, :cond_24

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-gt v1, v7, :cond_24

    iget-object v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v13, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v15, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_23

    move/from16 v21, v3

    goto :goto_f

    :cond_23
    move/from16 v21, v11

    :goto_f
    move v14, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v12 .. v21}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_11

    :cond_24
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMotion:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mNote:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveS:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mWaveL:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMute:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mSplash:Landroid/widget/ImageView;

    iget v12, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    if-ne v12, v10, :cond_25

    move/from16 v30, v3

    goto :goto_10

    :cond_25
    move/from16 v30, v11

    :goto_10
    move-object/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    invoke-virtual/range {v22 .. v30}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_11
    iput v10, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingtoneIconState:I

    iget v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    iput v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentRingerMode:I

    goto :goto_12

    :pswitch_4
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080b37

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_26
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080b36

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :pswitch_5
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f080810

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_27
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f08080e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_28
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    const v2, 0x7f08080d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final setVolumeSeekBar(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVolumeSeekBar mStreamType : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    const-string v2, ", volumeValue : "

    const-string v3, ", mGetRingerMode : "

    invoke-static {p1, v1, v2, v0, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGetRingerMode:I

    const-string v2, "BrightnessVolumeView"

    invoke-static {v1, v2, p1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;

    iput-object v0, p1, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTouchListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
