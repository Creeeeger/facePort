.class public final Lcom/android/systemui/qs/bar/MediaDevicesBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field public static final EMERGENCY_MODE_URI:Landroid/net/Uri;


# instance fields
.field public mBrightnessBarOnTop:Z

.field public mDeviceTouchArea:Landroid/widget/LinearLayout;

.field public mDevicesTitleText:Landroid/widget/TextView;

.field public mIsAllowedOnPanel:Z

.field public mIsAllowedOnTop:Z

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

.field public mMediaTitleText:Landroid/widget/TextView;

.field public mMediaTouchArea:Landroid/widget/LinearLayout;

.field public mOrientation:I

.field public final mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/controls/controller/SecDeviceControlsController;Lcom/android/systemui/media/MediaOutputHelper;Lcom/android/systemui/qs/QSBackupRestoreManager;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v1, v2, v3}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    const/4 p1, 0x1

    new-array v1, p1, [Landroid/net/Uri;

    sget-object v2, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-string p2, "qspanel_media_quickcontrol_bar_available"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const-string v0, "brightness_on_top"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p3, v3, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    move v3, p1

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    new-instance p2, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    check-cast p4, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    iget-object p3, p4, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-boolean v0, p3, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    iget-object v1, p3, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    new-instance v2, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$removeCallback$1;

    invoke-direct {v2, p4}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p2, p4, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    const-string p2, "controls_enabled"

    iget-object v1, p4, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v1, p2, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "SecDeviceControlsControllerImpl"

    const-string p2, "fireControlsUpdate()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p4, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    check-cast p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    iput-object v0, p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    iget-object p2, p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object p2, p2, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    new-instance p3, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$removeCallback$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    iget-object p1, p3, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    new-instance p2, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$setCallback$1;

    invoke-direct {p2, p4}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$setCallback$1;-><init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_1
    iput-object p5, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    new-instance p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    const-string p0, "MediaDevices"

    invoke-virtual {p6, p0, p1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v0, "MediaDevices"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final getBarHeight()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f070eae

    invoke-static {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d0319

    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0319

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a06f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTouchArea:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDeviceTouchArea:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a06f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0997

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTouchArea:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDeviceTouchArea:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOrientation:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    :cond_2
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onTuningChanged(): key = "

    const-string v1, ", newValue = "

    invoke-static {v0, p1, v1, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    goto :goto_0

    :cond_2
    const-string v0, "brightness_on_top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateResources$10()V

    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    return-void
.end method

.method public final updateBackground()Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f070eae

    invoke-static {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v3, :cond_0

    const v3, 0x7f060660

    goto :goto_0

    :cond_0
    const v3, 0x7f06065e

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f060502

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v0, p0, v3, v2}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;-><init>(I[Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final updateBarVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f070eae

    invoke-static {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getMediaDeviceBarTouchAreaBetweenPadding(Landroid/content/Context;)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBrightnessBarOnTop:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070121

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07095f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDeviceTouchArea:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTouchArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateResources$10()V

    return-void
.end method

.method public final updateResources$10()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f06065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBackground()Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBackground()Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
