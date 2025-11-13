.class public Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothBroadcastDialog.java"


# direct methods
.method static bridge synthetic -$$Nest$mlaunchFindBroadcastsActivity(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->launchFindBroadcastsActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchMediaOutputBroadcastDialog(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->launchMediaOutputBroadcastDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private isMediaPlaying()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private launchFindBroadcastsActivity()V
    .locals 0

    return-void
.end method

.method private launchMediaOutputBroadcastDialog()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->isMediaPlaying()Z

    move-result v0

    .line 59
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    .line 60
    sget v2, Lcom/android/settings/R$string;->bluetooth_find_broadcast:I

    goto :goto_0

    .line 61
    :cond_0
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_title:I

    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 62
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_find_message:I

    goto :goto_1

    .line 63
    :cond_1
    sget v2, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_broadcast_message:I

    .line 62
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_2

    .line 67
    sget v0, Lcom/android/settings/R$string;->bluetooth_broadcast_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    sget v0, Lcom/android/settings/R$string;->bluetooth_find_broadcast:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x1040000

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/settings/R$layout;->sim_confirm_dialog_multiple_enabled_profiles_supported:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "BTBroadcastsDialog"

    if-eqz v0, :cond_4

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v4, Landroid/widget/ArrayAdapter;

    sget v5, Lcom/android/settings/R$layout;->sim_confirm_dialog_item_multiple_enabled_profiles_supported:I

    invoke-direct {v4, p1, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 82
    sget v5, Lcom/android/settings/R$id;->carrier_list:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 84
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 85
    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    :cond_3
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "optionList is empty"

    .line 110
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_2
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public onStart()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    return-void
.end method
