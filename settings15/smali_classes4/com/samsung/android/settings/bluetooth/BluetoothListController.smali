.class public final Lcom/samsung/android/settings/bluetooth/BluetoothListController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAvailableDeviceCategory:Landroid/widget/TextView;

.field public mAvailableLayout:Landroid/widget/LinearLayout;

.field public mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

.field public mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

.field public mBottomArea:Landroid/view/View;

.field public mCastDeviceCategory:Landroid/widget/TextView;

.field public mCastLayout:Landroid/widget/LinearLayout;

.field public mCastList:Landroidx/recyclerview/widget/RecyclerView;

.field public mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

.field public mContainer:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field public mEmptyView:Landroid/widget/TextView;

.field public mFragment:Landroidx/fragment/app/Fragment;

.field public mGuideView:Landroid/widget/TextView;

.field public mIsSupportTips:Z

.field public mListener:Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment$2;

.field public mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

.field public mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

.field public mPairedDeviceCategory:Landroid/widget/TextView;

.field public mPairedLayout:Landroid/widget/LinearLayout;

.field public mPairedList:Landroidx/recyclerview/widget/RecyclerView;

.field public mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

.field public mRounded_frame:Landroid/view/View;

.field public mScrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    return-void
.end method


# virtual methods
.method public final getSelectedAdapter(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    return-object p0
.end method

.method public final isDialogType()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final setLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "BluetoothListController"

    const-string/jumbo v0, "setLayoutParams: mContext is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mRounded_frame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mRounded_frame:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final setRoundedCorner(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060738

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public final setVisibleCastGroup(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final setVisiblePairedGroup(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final updateEmptyView(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisiblePairedGroup(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisibleCastGroup(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mNoItemListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothNoItemListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->isDialogType()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableDeviceCategory:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
