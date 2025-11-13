.class public final synthetic Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->updateListCategoryFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastReceiveState:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getProgramInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mStatus:Z

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateStatusButton()V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addConnectedSourcePreference()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
