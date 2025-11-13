.class public Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ForgetDeviceDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public static synthetic $r8$lambda$NU54LGWINwZAubmhnhdR_uynJgc(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    .locals 2

    .line 44
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "device_address"

    .line 45
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "device_address"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 56
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x407

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 66
    new-instance p1, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 76
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->bluetooth_unpair_dialog_forget_confirm_button:I

    .line 77
    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 81
    sget v1, Lcom/android/settings/R$string;->bluetooth_unpair_dialog_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 82
    sget v1, Lcom/android/settings/R$string;->bluetooth_unpair_dialog_body:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 83
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method
