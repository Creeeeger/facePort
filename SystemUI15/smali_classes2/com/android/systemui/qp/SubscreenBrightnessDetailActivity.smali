.class public Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;


# instance fields
.field public mAutoBrightnessContainer:Landroid/widget/LinearLayout;

.field public mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mBackButton:Landroid/widget/ImageView;

.field public mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

.field public mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

.field public mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

.field public final mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

.field public final mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

.field public mIsFlexMode:Z

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSubBrightnessDetail:Landroid/widget/LinearLayout;

.field public mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

.field public mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static -$$Nest$msetBrightness(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "SubscreenBrightnessDetailActivity"

    const-string v0, "Auto brightness options are not available by KnoxStateMonitor."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

    if-eqz v0, :cond_3

    const-string v0, "brightness_pms_marker_screen"

    const-string/jumbo v1, "sub_screen_brightness"

    if-eqz p2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v3, 0x64

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/SettingsHelper;->setSubscreenBrightnessMode(I)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "sub_screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mIsFlexMode:Z

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0475

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$5;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const p1, 0x7f0a0c30

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubBrightnessDetail:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mDeviceStateCallback:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$1;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x710

    goto :goto_0

    :cond_0
    const/16 v0, 0x700

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    new-instance v0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const v2, 0x7f1312e4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0a0c51

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    const v2, 0x7f0a0c61

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->init(Landroid/content/Context;)V

    const v1, 0x7f0a0d3c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const v1, 0x7f0a0c56

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    const v1, 0x7f0a0c60

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0c54

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f131046

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0d34

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x3fa66666    # 1.3f

    const v5, 0x3f666666    # 0.9f

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const v6, 0x7f070119

    invoke-static {v0, v6, v5, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :goto_1
    const v0, 0x7f0a0638

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f071533

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0, v6, v5, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :goto_2
    invoke-static {v2, v6, v5, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getSubscreenBrightnessMode()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, p1

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$2;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$3;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$4;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-static {v0, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroidx/appcompat/widget/SwitchCompat;I)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    if-nez v0, :cond_6

    const-string p0, "SubscreenBrightnessDetailActivity"

    const-string p1, "onCreate() mBrightnessView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1312d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->sendAnnouncementEvent(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubroomBrightnessSettingsView;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

    iget-object v0, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_7
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPBE2023"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p1, p1, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p1, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-virtual {p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->getScreenTimeOut()I

    move-result v4

    :goto_5
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$BrightnessModeObserver;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mSubscreenBrightnessController:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDetailActivity:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    const-string v0, "SubscreenBrightnessDetailActivity"

    const-string v1, "onStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
