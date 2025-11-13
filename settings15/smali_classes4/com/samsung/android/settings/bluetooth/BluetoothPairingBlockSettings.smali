.class public final Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public layoutView:Landroid/view/View;

.field public mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public final mDataSetObserver:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;

.field public mListView:Landroid/widget/ListView;

.field public mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mNoItemView:Landroid/view/View;

.field public mRounded_frame:Landroid/view/View;

.field public mScreenId:Ljava/lang/String;

.field public mScrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mDataSetObserver:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;

    return-void
.end method


# virtual methods
.method public final initLayout(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0830

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    const v0, 0x7f0a0893

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    iput-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->updateBlockDeviceList()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->updateListView$2()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mDataSetObserver:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;

    invoke-virtual {p1, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final initRoundedCorners()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->setLayoutParams()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->layoutView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->initLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->initRoundedCorners()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14220a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0936

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->layoutView:Landroid/view/View;

    const p2, 0x7f0a022a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060738

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->seslSetFillHorizontalPaddingEnabled(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->layoutView:Landroid/view/View;

    const p2, 0x7f0a0cc9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mRounded_frame:Landroid/view/View;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->setLayoutParams()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->layoutView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->initLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->initRoundedCorners()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->layoutView:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mDataSetObserver:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    const-string/jumbo p1, "onDeviceBondStateChanged() :: bondState="

    const-string v0, "BluetoothPairingBlockSettings"

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    if-eqz p0, :cond_0

    const/16 p1, 0xc

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->updateBlockDeviceList()V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->updateBlockDeviceList()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "BluetoothPairingBlockSettings"

    const-string/jumbo v0, "onResume() :: mLocalManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    const-string p0, "BluetoothPairingBlockSettings"

    const-string/jumbo v0, "setLayoutParams: mContext is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mRounded_frame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mRounded_frame:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateListView$2()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mBluetoothBlockListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->getCount()I

    move-result v0

    const-string/jumbo v1, "updateListView() rejectItemSize : "

    const-string v2, "BluetoothPairingBlockSettings"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->mNoItemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
