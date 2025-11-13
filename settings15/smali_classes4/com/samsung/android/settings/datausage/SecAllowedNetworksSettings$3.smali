.class public final Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

.field public final synthetic val$appInfo:Landroidx/picker/model/AppInfo;

.field public final synthetic val$summaryView:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;Landroidx/picker/model/AppInfo;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;->val$appInfo:Landroidx/picker/model/AppInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;->val$summaryView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockList:Ljava/util/List;

    const-string v3, "AllowedNetworksforApps"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;->val$appInfo:Landroidx/picker/model/AppInfo;

    const v6, 0x7f0a0239

    if-ne v2, v6, :cond_0

    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v2, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p1, v2, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    iget p1, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Wifi and Mobile Data Both on Uid : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    iget-object p1, p1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v2, 0x7f0a0984

    if-ne p1, v2, :cond_1

    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v6, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p1, v6, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    iget p1, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Mobile Data Only Uid : "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {p1, v6, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    iget-object p1, p1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v2, v5, Landroidx/picker/model/AppInfo;->user:I

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    iget p1, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Wifi Only Uid : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {p1, v2, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    iget-object p1, p1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const v2, 0x7f0a11a4

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    iget p1, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->findSelectItem(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->getMenuName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;->val$summaryView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget p1, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p0, p1, v4}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p0

    new-instance p1, Landroidx/picker/model/AppData$ListAppDataBuilder;

    iget-object v1, v5, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget v2, v5, Landroidx/picker/model/AppInfo;->user:I

    sget-object v3, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object p0, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p0

    iget p1, v5, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->findSelectItem(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->getMenuName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setSubLabel(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object v0, p1, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    iget-object v0, v0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/model/AppData;

    invoke-interface {v2}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-interface {p0}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/picker/model/AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p1, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    iput-object v1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    iget-object p1, p0, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    invoke-virtual {p0, v1, p1}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
