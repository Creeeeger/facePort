.class public Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AABluetoothSettingsController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AABluetoothSettingsController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$IzdWxewClxuh19t62LXPOU6Il-c(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->lambda$showBTDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5uEYCGfDmZwROFbpF4RFJdokTo(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->lambda$showBTDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isBluetoothOn()Z
    .locals 1

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    .line 76
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->TAG:Ljava/lang/String;

    const-string v0, "btAdapter is Null"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 0

    const/4 p0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p2, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    return p0
.end method

.method private synthetic lambda$showBTDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->setBluetooth(Z)Z

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->launchAABTSettings()V

    return-void
.end method

.method private synthetic lambda$showBTDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->launchAABTSettings()V

    return-void
.end method

.method private launchAABTSettings()V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    .line 126
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettings;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-string v0, "Android auto"

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method private launchPlayStore()V
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    .line 56
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://details?id=com.google.android.projection.gearhead"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/details?id=com.google.android.projection.gearhead"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private setBluetooth(Z)Z
    .locals 1

    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    .line 87
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->TAG:Ljava/lang/String;

    const-string v0, "btAdapter is Null"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    return p0

    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private showBTDialog()V
    .locals 3

    .line 104
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Android auto is asking to turn on Bluetooth"

    .line 106
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;)V

    const-string v2, "Allow"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 115
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;)V

    const-string p0, "Deny"

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 39
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreferenceTreeClick : preferenceKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android_auto_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.google.android.projection.gearhead"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->launchPlayStore()V

    return v0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->isBluetoothOn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothSettingsController;->showBTDialog()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
