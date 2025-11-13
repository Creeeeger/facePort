.class public Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final KEY_STYLUS_USI_HEADER:Ljava/lang/String; = "stylus_usi_header"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private final mInputDevice:Landroid/view/InputDevice;

.field private final mInputManager:Landroid/hardware/input/InputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;

    const-string v0, "StylusUsiHeaderController"

    sput-object v0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/InputDevice;)V
    .locals 1

    const-string v0, "stylus_usi_header"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputDevice:Landroid/view/InputDevice;

    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private isValidBatteryState(Landroid/hardware/BatteryState;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/BatteryState;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refresh()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getBatteryState()Landroid/hardware/BatteryState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a05cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->isValidBatteryState(Landroid/hardware/BatteryState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p0

    invoke-virtual {v0}, Landroid/hardware/BatteryState;->getCapacity()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f142de8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f080636

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "Icon for stylus"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->refresh()V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "stylus_usi_header"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onBatteryStateChanged(IJLandroid/hardware/BatteryState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->refresh()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/input/InputManager;->addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsiHeaderController;->refresh()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
