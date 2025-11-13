.class Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;
.super Ljava/lang/Object;
.source "AvailableListAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;


# direct methods
.method public static synthetic $r8$lambda$VemDJo1982pMDya5QtkqjiCXNKc(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->lambda$onMenuItemClick$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$0(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "WifiList.Available"

    const-string p1, "onMenuItemClick but ignored. WifiEntry is null"

    .line 230
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 233
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    return v1

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$mlaunchModifyFragment(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string p1, "0122"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 258
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToRemove(Landroid/net/wifi/WifiConfiguration;)V

    .line 260
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;->onForget(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 261
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string p1, "0121"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0

    .line 235
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string v2, "0124"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsOsuProvider()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;)V

    invoke-virtual {p1, v1}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return v0

    :cond_5
    if-eqz p1, :cond_6

    .line 249
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/AvailableListAdapter;)Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$OnEventListener;->onConnect(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 252
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 253
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->-$$Nest$mlaunchNetworkConnectFragment(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_7
    :goto_0
    return v0
.end method
