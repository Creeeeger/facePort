.class public Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecAdaptiveDisplaySettings.java"


# instance fields
.field private mAdaptiveDisplayView:Landroid/view/View;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mBlueLabel:Landroid/widget/TextView;

.field private final mBluelightFilterObserver:Landroid/database/ContentObserver;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCustomSeekBarBlue:Landroid/widget/SeekBar;

.field private final mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarGreen:Landroid/widget/SeekBar;

.field private final mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarRed:Landroid/widget/SeekBar;

.field private final mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mDTBlueObserver:Landroid/database/ContentObserver;

.field private final mDTGreenObserver:Landroid/database/ContentObserver;

.field private final mDTRedObserver:Landroid/database/ContentObserver;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEdgeColorBalance:Landroid/widget/LinearLayout;

.field private mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mEdgeColorBalanceSubText:Landroid/widget/TextView;

.field private mEdgeColorBalanceTitleText:Landroid/widget/TextView;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mGreenLabel:Landroid/widget/TextView;

.field private mIsCustomEdgeBalanceSupported:Z

.field private mIsFocusableBlue:Z

.field private mIsFocusableGreen:Z

.field private mIsFocusableRed:Z

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewLayout:Landroid/widget/RelativeLayout;

.field private mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRedLabel:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlueLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomSeekBarBlue(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomSeekBarGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomSeekBarRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGreenLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFocusableBlue(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFocusableGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFocusableRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBlueExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBlueShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressGreenExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressGreenShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressRedExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressRedShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRedLabel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbBlueFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbBlueFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickBlueFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickBlueFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryLevel(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFocusableBlue(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFocusableGreen(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFocusableRed(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressBlueExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressBlueShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressGreenExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressGreenShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressRedExpandAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressRedShrinkAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbBlueFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbBlueFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTickBlueFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTickBlueFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTickGreenFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTickGreenFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTickRedFadeInAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTickRedFadeOutAnimation(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeColor(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->changeColor(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartEdgeColorBalance(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->startEdgeColorBalance()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 65
    iput v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    .line 330
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    .line 338
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$4;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    .line 345
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 352
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 605
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$11;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 614
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$12;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 623
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 632
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 644
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$15;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 697
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$16;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 709
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$17;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 762
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$18;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$18;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 774
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$19;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 865
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$21;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->sec_screen_mode_page_indicator_unselected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sget p1, Lcom/android/settings/R$drawable;->sec_screen_mode_page_indicator_selected:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const-string v0, "SecAdaptiveDisplaySettings"

    const-string v1, "createAdaptiveDisplayView()"

    .line 145
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 149
    :cond_0
    sget v1, Lcom/android/settings/R$layout;->sec_display_temperature_list_item:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const/16 v1, 0xf

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 151
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 153
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->pager:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    .line 154
    new-instance p2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    .line 155
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {v2, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 156
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 157
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    new-instance v2, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$1;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 169
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->preview_layout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_2

    .line 171
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 173
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    .line 182
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    .line 184
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->point_area:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    .line 185
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    invoke-virtual {p2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->getCount()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    if-ge v2, p2, :cond_3

    .line 188
    sget v4, Lcom/android/settings/R$layout;->sec_screen_mode_pager_circle:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 189
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->page_description_template:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v3, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v7

    goto :goto_1

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->sec_screen_mode_page_indicator_selected:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 208
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 211
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCreate():  mIsCustomEdgeBalanceSupported="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->initColorBalance()V

    goto :goto_2

    .line 216
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 218
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsCustomEdgeBalanceSupported:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->setEdgeColorBalanceCustomItemsVisible(Z)V

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    return-object p0
.end method

.method private initColorBalance()V
    .locals 6

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->initColorBalanceCustomDB()V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->red_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->custom_seekbar_red:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sec_display_temperature_red"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    .line 367
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 368
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 369
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 370
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 371
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$7;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->green_label:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->custom_seekbar_green:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sec_display_temperature_green"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    .line 423
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 424
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 425
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 426
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 427
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$8;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->blue_label:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->custom_seekbar_blue:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sec_display_temperature_blue"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    .line 480
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 481
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 482
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 483
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 484
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$9;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->edge_color_balance:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->edge_color_balance_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->edge_color_balance_sub:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 534
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_edge_color_balance_summary:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    if-eqz v0, :cond_4

    .line 536
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$10;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->custom_color_area:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 550
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_5
    return-void
.end method

.method private initColorBalanceCustomDB()V
    .locals 8

    .line 560
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_display_temperature_custom"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SecAdaptiveDisplaySettings"

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sec_display_temperature_red"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 568
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "sec_display_temperature_green"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 570
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sec_display_temperature_blue"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v6, :cond_1

    .line 574
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 576
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setEdgeColorBalanceCustomItemsVisible(Z)V
    .locals 4

    .line 828
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 829
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 830
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->sub_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 832
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 310
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 311
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 312
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 313
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 314
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateColorBalanceCustomItems(Z)V

    return-void
.end method

.method private showEdgeColorBalanceBatteryCheckDialog()V
    .locals 6

    .line 848
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 850
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 851
    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    .line 857
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 858
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_edge_color_balance_not_enough_battery_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 859
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_edge_color_balance_not_enough_battery:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    .line 860
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 859
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 861
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_common_ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 862
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startEdgeColorBalance()V
    .locals 2

    .line 838
    iget v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->showEdgeColorBalanceBatteryCheckDialog()V

    goto :goto_0

    .line 841
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.EDGE_COLOR_BALANCE_SETTING"

    .line 842
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateColorBalanceCustomItems(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 581
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sec_display_temperature_red"

    .line 582
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 581
    invoke-virtual {p1, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 583
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "sec_display_temperature_green"

    .line 584
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 583
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 585
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "sec_display_temperature_blue"

    .line 586
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 585
    invoke-virtual {p1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 588
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 591
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 594
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 599
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 600
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d1a

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mResources:Landroid/content/res/Resources;

    .line 234
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 236
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 239
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateTemperatureSettingsState()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mResources:Landroid/content/res/Resources;

    .line 107
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_red_expand_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_red_shrink_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_red_fade_in_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_red_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_red_fade_in_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_red_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_green_expand_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_green_shrink_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_green_fade_in_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_green_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_green_fade_in_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 125
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_green_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_blue_expand_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_blue_shrink_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_blue_fade_in_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_thumb_blue_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_blue_fade_in_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->sec_screen_mode_progress_tick_blue_fade_out_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const-string p0, "SecAdaptiveDisplaySettings"

    const-string p1, "onCreate()"

    .line 136
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 276
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 281
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    sget p0, Lcom/android/settings/R$id;->new_mode_advanced_settings_layout:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "SecAdaptiveDisplaySettings"

    if-eqz p0, :cond_0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroyView: layout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "onDestroyView: layout = null"

    .line 291
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 247
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "SecAdaptiveDisplaySettings"

    const-string v1, "onResume()"

    .line 259
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 264
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateTemperatureSettingsState()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    .line 267
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Landroid/database/ContentObserver;

    .line 266
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->isTemperatureSettingEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->setPreferenceEnable(Z)V

    return-void
.end method
