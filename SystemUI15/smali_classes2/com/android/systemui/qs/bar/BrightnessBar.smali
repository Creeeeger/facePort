.class public final Lcom/android/systemui/qs/bar/BrightnessBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/bar/TileHostable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBarBottomMargin:I

.field public mBrightnessBarContainer:Landroid/widget/LinearLayout;

.field public mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public final mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field public mBrightnessDetailIcon:Landroid/widget/ImageView;

.field public mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public final mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

.field public mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final mBrightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public mCloneBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

.field public final mContext:Landroid/content/Context;

.field public mIsAllowedOnTop:Z

.field public final mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

.field public final mQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

.field public final mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

.field public mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSliderContainer:Landroid/widget/RelativeLayout;

.field public mTileLayout:Landroid/widget/LinearLayout;

.field public final mTiles:Ljava/util/ArrayList;

.field public mToggleSeekBar:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/QSBackupRestoreManager;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/qs/QSBackupRestoreManager;",
            "Lcom/android/systemui/qs/SecQSDetailController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$2;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p7, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    iput-object p8, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const-string p1, "brightness_on_top"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p5, p2, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    move v0, p2

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    new-instance p1, Lcom/android/systemui/qs/bar/BrightnessBar$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    const-string p0, "BrightnessOnTop"

    invoke-virtual {p7, p0, p1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateTileLayoutSizeMargins(Landroid/widget/LinearLayout;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->tiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v1, "BrightnessOnTop"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->removeAllTiles()V

    return-void
.end method

.method public final getBarHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    add-int/2addr v0, p0

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarContainerHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a01d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0b7d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0b7c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mToggleSeekBar:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a01cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/RecoilEffectUtil;->getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    invoke-direct {v1, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SecBrightnessMirrorControllerProvider;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-object p1, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->secBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v2, v0, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mToggleSeekBar:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    const-string v0, "BrightnessDetail disabled = "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const v3, 0x7f0a01cc

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->tiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/settings/brightness/BrightnessDetail;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    new-instance v3, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;Landroid/os/Handler;Lcom/android/systemui/settings/brightness/ToggleSeekBar;Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mToggleSeekBar:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility$7()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateHeightMargins()V

    return-void
.end method

.method public final makeCloneBar()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0d03bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v2, 0x7f0a01d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a0b7d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a01cc

    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/qs/bar/BarItemImpl;->createTilesViewAndDistribute(Landroid/view/View;Ljava/util/ArrayList;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Ljava/lang/Boolean;Lcom/android/systemui/qs/QSHost;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1, v8}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a01cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCloneBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCloneBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateHeightMargins()V

    return-void
.end method

.method public final onKnoxPolicyChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility$7()V

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "onTuningChanged() : key = "

    const-string v1, ", newValue = "

    invoke-static {v0, p1, v1, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "brightness_on_top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    goto :goto_1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility$7()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onTuningChanged() : BRIGHTNESS_ON_TOP = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isSliderDisabled:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    const v2, 0x7f080fbb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    const v2, 0x7f060ab3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSecBrightnessController:Lcom/android/systemui/settings/brightness/SecBrightnessController;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->handler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->control:Lcom/android/systemui/settings/brightness/ToggleSlider;

    instance-of v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSliderDrawable()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSliderDrawable()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateIconSize()V

    return-void
.end method

.method public final orignBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final removeAllTiles()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    invoke-direct {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    if-eqz p0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->expanded:Z

    :cond_1
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    invoke-direct {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateBrightnessMirror()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iput-object v0, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/settings/brightness/MirrorController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setMirror(Lcom/android/systemui/settings/brightness/ToggleSlider;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSliderHeight(I)V

    :cond_1
    return-void
.end method

.method public final updateClonedBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a0b7c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mCloneBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getMax()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateIconSize()V

    return-void
.end method

.method public final updateIconSize()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f070122

    invoke-static {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v2, 0x7f0a01cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v3, 0x7f0a01cd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const v4, 0x7f0a01cb

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    goto :goto_2

    :cond_6
    move-object p0, v3

    :goto_2
    instance-of v1, p0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_7

    move-object v3, p0

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method

.method public final updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarContainerHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p4, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p2, p2, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {p2, v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSliderHeight(I)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateTileLayoutSizeMargins(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateTileLayoutSizeMargins(Landroid/widget/LinearLayout;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v1, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateVisibility$7()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    :cond_3
    return-void
.end method
