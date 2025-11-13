.class public Lcom/samsung/android/settings/wifi/EasySetupListAdapter;
.super Lcom/samsung/android/settings/wifi/WifiListAdapter;
.source "EasySetupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;
    }
.end annotation


# instance fields
.field private final mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public static synthetic $r8$lambda$Q6PcWnTrvwolJoHdNu4qYZuDxVk(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;->lambda$onBindViewHolder$0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;Z",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/wifitrackerlib/WifiPickerTracker;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 53
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/WifiListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;ZLjava/lang/String;ZLandroidx/fragment/app/Fragment;)V

    .line 54
    iput-object p7, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;->startEasySetup(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private startEasySetup(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const/16 v1, 0xc42

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/EasySetupListAdapter;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 95
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getEasySetupSettings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lcom/samsung/wifitrackerlib/EasySetupUtils;->getMatchedSemEasySetupWifiScanSettings(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    move-result-object v0

    const-string v1, "WifiList.EasySetup"

    if-nez v0, :cond_0

    const-string p0, "Failed to start - cannot find matched setting"

    .line 97
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForSettings:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    const-string p0, "Failed to start - pendingIntent is null"

    .line 102
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 107
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssid"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sender"

    const-string v3, "GLOBAL_WIFI_SETTINGS"

    .line 108
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->semGetBssids()Ljava/util/ArrayList;

    move-result-object p1

    const-string v2, "wifiMac"

    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Pending intent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " canceled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiList.EasySetup"

    return-object p0
.end method

.method protected notifyOnLaunchActivityFinishedIfNeeded()V
    .locals 0

    return-void
.end method

.method protected notifyOnLaunchActivityIfNeeded()V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "WifiList.EasySetup"

    if-ltz p2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v1, :cond_1

    const-string p0, "onBindViewHolder failed - null WifiEntry"

    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_1
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v2, :cond_2

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindView Connected AP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    check-cast p1, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;

    .line 83
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->-$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->sec_ic_smart_things:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;->-$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "onBindViewHolder failed - invalid index"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->sec_wifi_list_preference:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->visibleLeftRightPadding(Landroid/view/View;)V

    .line 63
    new-instance p2, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/EasySetupListAdapter$EasySetupViewHolder;-><init>(Lcom/samsung/android/settings/wifi/EasySetupListAdapter;Landroid/view/View;)V

    return-object p2
.end method
