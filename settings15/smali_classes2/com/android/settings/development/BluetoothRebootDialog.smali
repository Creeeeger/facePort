.class public Lcom/android/settings/development/BluetoothRebootDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const-string v1, "BluetoothReboot"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settings/development/BluetoothRebootDialog;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothRebootDialog;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a1

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothRebootDialog$OnRebootDialogListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-class v1, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;

    const-class v2, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    const-class v3, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    const/4 v4, 0x0

    const-class v5, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    if-ne p2, v0, :cond_8

    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1, v5}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    iget-boolean p2, p2, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    const-string v0, "persist.bluetooth.leaudio_offload.disabled"

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "persist.bluetooth.a2dp_offload.disabled"

    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_2

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    iget-boolean p2, p2, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;->mChanged:Z

    const/4 v3, 0x1

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    iget-boolean v0, p2, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;->mChanged:Z

    if-eqz v0, :cond_6

    iget-object p2, p2, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isLeAudioSupported()I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    move v4, v3

    :cond_5
    xor-int/lit8 p2, v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "persist.bluetooth.leaudio_switcher.disabled"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;

    iget-boolean p2, p1, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mChanged:Z

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p2, "persist.bluetooth.leaudio_dynamic_switcher.mode"

    iget-object p1, p1, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mNewMode:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1, v5}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    iput-boolean v4, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    invoke-virtual {p1, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    iput-boolean v4, p0, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;->mChanged:Z

    invoke-virtual {p1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    iput-boolean v4, p0, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;->mChanged:Z

    invoke-virtual {p1, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;

    iput-boolean v4, p0, Lcom/android/settings/development/BluetoothLeAudioModePreferenceController;->mChanged:Z

    :goto_4
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1406fe

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v0, 0x7f1406ff

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f1406fd

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1406fc

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
