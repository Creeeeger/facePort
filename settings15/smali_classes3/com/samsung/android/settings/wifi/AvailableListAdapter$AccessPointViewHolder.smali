.class public final Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field public final mDivider:Landroid/view/View;

.field public final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field public final mIcon:Landroid/widget/ImageView;

.field public final mSummary:Landroid/widget/TextView;

.field public final mTipsDisabledIconLayout:Landroid/widget/RelativeLayout;

.field public final mTitle:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;

.field public mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mWifiTipsImageView:Landroid/widget/ImageView;

.field public final onMenuItemClickListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    const v0, 0x7f0a119e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a1041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0f81

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mHideContextMenus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mView:Landroid/view/View;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080e26

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080e25

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    const p1, 0x7f0a088b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTipsDisabledIconLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a001b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiTipsImageView:Landroid/widget/ImageView;

    const p1, 0x7f0a118d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final canModifyNetwork()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v2, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-boolean p3, p2, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mHideContextMenus:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p3, :cond_1

    const-string p0, "WifiList.Available"

    const-string p1, "Failed to create context menu. WifiEntry is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string p3, "0120"

    invoke-static {p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const v0, 0x7f1435bc

    invoke-interface {p1, p2, p3, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsAdmin:Z

    if-eqz v0, :cond_4

    const v0, 0x7f1435bd

    invoke-interface {p1, p2, v1, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsAdmin:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eq v0, v1, :cond_5

    const/4 v0, 0x3

    const v1, 0x7f1435be

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v0, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sem_wifi_carrier_network_offload_enabled"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-boolean v0, p3, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsAdmin:Z

    if-eqz v0, :cond_6

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14347c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1435c0

    invoke-virtual {p3, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    invoke-interface {p1, p2, v0, p2, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method
