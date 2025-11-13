.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

.field public final synthetic f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;->f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate$$ExternalSyntheticLambda2;->f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mDeviceListAdapter:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;

    iget-object v2, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mHearingDeviceItemList:Ljava/util/List;

    iget-object v3, v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getAllPresetInfo()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetsController:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesPresetsController;->getActivePresetIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->refreshPresetInfoAdapter(ILjava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesDialogDelegate;->mPresetInfoAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void
.end method
