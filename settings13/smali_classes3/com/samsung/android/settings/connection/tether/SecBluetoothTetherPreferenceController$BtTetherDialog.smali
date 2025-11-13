.class public Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecBluetoothTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtTetherDialog"
.end annotation


# static fields
.field private static btcontroller:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;


# instance fields
.field private dialogId:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetbtcontroller()Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->btcontroller:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;I)Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;
    .locals 2

    if-eqz p0, :cond_1

    .line 657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    sput-object p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->btcontroller:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    .line 662
    new-instance p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;

    invoke-direct {p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;-><init>()V

    .line 663
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_bt_id"

    .line 664
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 666
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 667
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "bt_tether_dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1

    .line 658
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fragment is not ready"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 678
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 679
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialog_bt_id"

    .line 680
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->dialogId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 685
    iget p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->dialogId:I

    if-nez p1, :cond_0

    .line 686
    sget p1, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    .line 688
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog$1;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;)V

    .line 689
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->tether_settings_title_bluetooth:I

    .line 693
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
