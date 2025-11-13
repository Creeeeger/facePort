.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PRIORITY_HINTCARD:[Ljava/lang/String;


# instance fields
.field public final checked:[Z

.field public final checkedBackup:[Z

.field public isAvailableListRounded:Z

.field public mAutoHotspotCategory:Landroid/widget/TextView;

.field public mAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

.field public mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

.field public mAvailableCategory:Landroid/widget/TextView;

.field public mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

.field public mBottomArea:Landroid/view/View;

.field public mConnectedCategory:Landroid/widget/TextView;

.field public mConnectedList:Landroidx/recyclerview/widget/RecyclerView;

.field public mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

.field public mContainer:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public mEasySetupCategory:Landroid/widget/TextView;

.field public mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

.field public mEasySetupListAdapter:Lcom/samsung/android/settings/wifi/EasySetupListAdapter;

.field public mEmptyView:Landroid/widget/TextView;

.field public mFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

.field public mFilterLayout:Landroid/widget/LinearLayout;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

.field public mHasFilterMenuSetUp:Z

.field public mInPickerDialog:Z

.field public mInSetupWizardActivity:Z

.field public mInSetupWizardActivityVzw:Z

.field public mInstantHotspotCategory:Landroid/widget/TextView;

.field public mInstantHotspotList:Landroidx/recyclerview/widget/RecyclerView;

.field public mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

.field public mIsFilterMenuVisible:Z

.field public mIsListVisible:Z

.field public mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

.field public mMcfAutoHotspotCategory:Landroid/widget/TextView;

.field public mMcfAutoHotspotList:Landroidx/recyclerview/widget/RecyclerView;

.field public mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

.field public final mMultiChoiceButtonOnClickListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

.field public mQrScannerLayout:Landroid/view/View;

.field public mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public mRefreshListLayout:Landroid/view/View;

.field public final mSAScreenId:Ljava/lang/String;

.field public mScrollView:Landroidx/core/widget/NestedScrollView;

.field public mSsidFilterClearDrawable:Landroid/graphics/drawable/Drawable;

.field public mSsidFilterEditText:Landroid/widget/EditText;

.field public final mSsidFilterEditTextOnTouchListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;

.field public mView:Landroid/view/View;

.field public final mWifiEntries:Ljava/util/ArrayList;

.field public mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->PRIORITY_HINTCARD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checked:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checkedBackup:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHasFilterMenuSetUp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsFilterMenuVisible:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditTextOnTouchListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMultiChoiceButtonOnClickListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiEntries:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final destroyAutoHotspot()V
    .locals 2

    const-string v0, "WifiSettings.VI.AutoHotspot"

    const-string v1, "destroyAutoHotspot() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AutoHotspotListAdapter"

    const-string/jumbo v1, "removeAll() - initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final destroyInstantHotspot()V
    .locals 2

    const-string v0, "WifiSettings.VI.InstantHotspot"

    const-string v1, "destroyInstantHotspot() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInstantHotspotListAdapter:Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InstantHotspotListAdapter"

    const-string/jumbo v1, "removeAll() - initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstantHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final destroyMcfAutoHotspot()V
    .locals 2

    const-string v0, "WifiSettings.VI.MCFAutoHotspot"

    const-string v1, "destroyMcfAutoHotspot() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "McfAutoHotspotListAdapter"

    const-string/jumbo v1, "removeAll() - initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final isHideListSidePadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivityVzw:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setEnableRefreshLayout(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez p0, :cond_0

    const-string p0, "WifiSettings.VI"

    const-string/jumbo p1, "setEnableRefreshLayout - refresh layout is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final setLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isHideListSidePadding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mView:Landroid/view/View;

    const v2, 0x7f0a0cc8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0cc9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060738

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    return-void
.end method

.method public final setVisibleAvailableList(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mBottomArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mBottomArea:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsListVisible:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "sec_wifi_developer_use_filter"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsFilterMenuVisible:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHasFilterMenuSetUp:Z

    if-nez v3, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilterLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0a0f

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMultiChoiceButtonOnClickListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilterLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0ed6

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilterLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0ed5

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSettingsListController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditTextOnTouchListener:Lcom/samsung/android/settings/wifi/WifiSettingsListController$4;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHasFilterMenuSetUp:Z

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilterLayout:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsFilterMenuVisible:Z

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setVisibleEasySetupList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInPickerDialog:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupCategory:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEasySetupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAvailableListRoundedCorners(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isAvailableListRounded:Z

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isAvailableListRounded:Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->isAvailableListRounded:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06079f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    :goto_0
    return-void
.end method

.method public final updateEmptyView(Z)V
    .locals 5

    const-string/jumbo v0, "updateEmptyView - "

    const-string v1, ", AvailableAPCount : "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ConnectedAPCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->getItemCount()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSettings.VI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setEnableRefreshLayout(Z)V

    const/16 v0, 0x8

    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v3, "removeAll() - Triggered"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedCategory:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mConnectedListAdapter:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableCategory:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->removeAll()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AutoHotspotListAdapter"

    const-string/jumbo v4, "removeAll() - initiated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->mBleAccessPoints:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotCategory:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mMcfAutoHotspotListAdapter:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "McfAutoHotspotListAdapter"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->mMcfAccessPoints:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleAvailableList(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleEasySetupList(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setVisibleAvailableList(Z)V

    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mInSetupWizardActivity:Z

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mQrScannerLayout:Landroid/view/View;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final updateWithAnimation(Lcom/android/wifitrackerlib/WifiEntry;Ljava/util/List;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mHandler:Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "WifiSettings.VI"

    if-nez v2, :cond_0

    const-string/jumbo p0, "update empty list"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "first update newList size:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iput-object p2, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    if-eqz v1, :cond_3

    iput-boolean p3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mScanUpdated:Z

    :cond_3
    iget-object p3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mAvailableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    const-string p3, "animation is running, pending it to update"

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$MyHandler;->mLastUpdatedPendingList:Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mListAdapter:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->deleteItem(Lcom/android/wifitrackerlib/WifiEntry;)I

    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mIsListVisible:Z

    if-nez p1, :cond_6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->updateEmptyView(Z)V

    :cond_6
    :goto_2
    return-void
.end method
