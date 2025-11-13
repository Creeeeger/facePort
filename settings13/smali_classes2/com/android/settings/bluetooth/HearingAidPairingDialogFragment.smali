.class public Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HearingAidPairingDialogFragment.java"


# direct methods
.method public static synthetic $r8$lambda$WGmlXlPCCnslM7edzugD8dvYlYI(Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;->positiveButtonListener()V

    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;
    .locals 2

    .line 48
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result p0

    const-string v1, "cached_device_side"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    new-instance p0, Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;-><init>()V

    .line 51
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private positiveButtonListener()V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x2

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "cached_device_side"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 65
    sget v0, Lcom/android/settings/R$string;->bluetooth_pair_other_ear_dialog_title:I

    if-nez p1, :cond_0

    .line 67
    sget v1, Lcom/android/settings/R$string;->bluetooth_pair_other_ear_dialog_left_ear_message:I

    goto :goto_0

    .line 68
    :cond_0
    sget v1, Lcom/android/settings/R$string;->bluetooth_pair_other_ear_dialog_right_ear_message:I

    :goto_0
    if-nez p1, :cond_1

    .line 70
    sget p1, Lcom/android/settings/R$string;->bluetooth_pair_other_ear_dialog_right_ear_positive_button:I

    goto :goto_1

    .line 71
    :cond_1
    sget p1, Lcom/android/settings/R$string;->bluetooth_pair_other_ear_dialog_left_ear_positive_button:I

    .line 73
    :goto_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/HearingAidPairingDialogFragment;)V

    .line 78
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
