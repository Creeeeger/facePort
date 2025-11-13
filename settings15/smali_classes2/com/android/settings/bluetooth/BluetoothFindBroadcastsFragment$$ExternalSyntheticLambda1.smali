.class public final synthetic Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->mBluetoothLeBroadcastMetadata:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
