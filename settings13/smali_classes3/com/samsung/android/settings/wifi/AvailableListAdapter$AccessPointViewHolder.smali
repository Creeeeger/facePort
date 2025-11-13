.class Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AvailableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AvailableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessPointViewHolder"
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;

.field private mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRelativeLayoutDisable:Landroid/widget/RelativeLayout;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final onMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private settingsImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

.field private wifiTipsImageView:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRelativeLayoutDisable(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mRelativeLayoutDisable:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->wifiTipsImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V
    .locals 3

    .line 148
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    .line 149
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 225
    new-instance v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 150
    sget v0, Lcom/android/settings/R$id;->wifi_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 151
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    .line 154
    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_wifi_suw_preference_title_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sec_wifi_suw_preference_summary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$fgetmHideContextMenus(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 161
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 163
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mView:Landroid/view/View;

    .line 164
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 167
    sget p1, Lcom/android/settings/R$id;->layout_details:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 168
    sget p1, Lcom/android/settings/R$id;->layout_disable:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mRelativeLayoutDisable:Landroid/widget/RelativeLayout;

    .line 169
    sget p1, Lcom/android/settings/R$id;->WifiDetails:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->settingsImageView:Landroid/widget/ImageView;

    .line 170
    sget p1, Lcom/android/settings/R$id;->WifiTipsIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->wifiTipsImageView:Landroid/widget/ImageView;

    .line 171
    sget p1, Lcom/android/settings/R$id;->wifi_divider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method

.method private canModifyNetwork()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 219
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 220
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

    .line 221
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 222
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


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 177
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$fgetmHideContextMenus(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p2, :cond_1

    const-string p0, "WifiList.Available"

    const-string p1, "Failed to create context menu. WifiEntry is NULL"

    .line 181
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string p3, "0120"

    invoke-static {p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 p2, 0x1

    .line 187
    sget p3, Lcom/android/settings/R$string;->wifi_menu_connect:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 188
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 191
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 192
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 196
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOpenRoamingNetwork()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 200
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 201
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->canModifyNetwork()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 204
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 205
    sget p2, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    goto :goto_0

    :cond_5
    sget p2, Lcom/android/settings/R$string;->wifi_menu_forget:I

    :goto_0
    const/4 p3, 0x2

    .line 206
    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 207
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 209
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 210
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->canModifyNetwork()Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    .line 211
    sget p3, Lcom/android/settings/R$string;->wifi_menu_modify:I

    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 212
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->onMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_7
    return-void
.end method
