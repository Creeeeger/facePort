.class public final synthetic Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

.field public final synthetic f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "BluetoothLeBroadcastMetadata is null, do nothing."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mIsEncrypted:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d008e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0263

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a0260

    invoke-virtual {v0, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f140f91

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p0, v5}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;)V

    const p0, 0x7f1406c8

    invoke-virtual {v0, p0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d9

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Landroid/text/InputFilter;

    iget-object v3, p1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mInputFilter:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$3;

    aput-object v3, v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/16 v0, 0x91

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$2;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method
