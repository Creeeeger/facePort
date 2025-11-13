.class public final Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "BluetoothPairingBlockSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final DBG:Z


# instance fields
.field private mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mListView:Landroid/widget/ListView;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNoItemView:Landroid/view/View;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mupdateListView(Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->updateListView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 60
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method private inflateListView()V
    .locals 2

    .line 177
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->updateListView()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 1

    .line 159
    sget v0, Lcom/android/settings/R$id;->item_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    .line 160
    sget v0, Lcom/android/settings/R$id;->layout_no_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->inflateListView()V

    return-void
.end method

.method private initRoundedCorners(Landroid/view/View;)V
    .locals 3

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 171
    invoke-virtual {p1, v0, p0}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private updateListView()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->getCount()I

    move-result v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateListView() rejectItemSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothPairingBlockSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 193
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_pairing_block_request_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 135
    sget p3, Lcom/android/settings/R$layout;->sec_preference_bluetooth_pairing_block_device:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->initLayout(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->initRoundedCorners(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceBondStateChanged() :: bondState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPairingBlockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    if-eqz p0, :cond_0

    const/16 p1, 0xc

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->updateBlockDeviceList()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->updateBlockDeviceList()V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "BluetoothPairingBlockSettings"

    const-string v0, "onResume() :: mLocalManager is null"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
