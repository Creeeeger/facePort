.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDiagnosisSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;
.implements Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;


# instance fields
.field private mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

.field private mAvailableCategory:Landroid/widget/TextView;

.field private mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

.field private mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

.field private mConnectedCategory:Landroid/widget/TextView;

.field private mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGoToManageNetwork:Landroid/widget/Button;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

.field private mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

.field private mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$R2oPIvF3B9Dne5rJjtNe87L-92s(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStepList(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateStepList(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStepLog(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateStepLog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getSupplicantStateText(Landroid/net/wifi/SupplicantState;)Ljava/lang/String;
    .locals 0

    .line 250
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->find(Landroid/net/wifi/SupplicantState;)Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/utils/SupplicantStateMessage;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->launchManageNetwork()V

    return-void
.end method

.method private launchManageNetwork()V
    .locals 3

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "development_mode"

    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 332
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private setAvailableVisibility(Z)V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableCategory:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setButtonEnabled(Z)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mGoToManageNetwork:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mGoToManageNetwork:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private setConnectedVisibility(Z)V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/16 v0, 0xf

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 356
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private setupEntryRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;",
            ">;)V"
        }
    .end annotation

    .line 339
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 340
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 341
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 343
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private setupLogRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;",
            ">;)V"
        }
    .end annotation

    .line 347
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 348
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 349
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 351
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_no_saved_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_wifi_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateStepList(Landroid/net/wifi/SupplicantState;Z)V
    .locals 1

    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateStepList] state : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiDiagnosisSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->getSupplicantStateText(Landroid/net/wifi/SupplicantState;)Ljava/lang/String;

    return-void
.end method

.method private updateStepLog()V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateLog(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v1, "WifiDiagnosisSettings"

    if-nez v0, :cond_0

    const-string p0, "[updateStepLog] mStepEntry is null"

    .line 259
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 262
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateStepLog] SSID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getSsidList()[Ljava/lang/String;

    move-result-object v2

    .line 266
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 267
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateStepLog] SSID + key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getLogDataBySsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->updateLogData(Ljava/util/List;)V

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private updateWifiEntries()V
    .locals 7

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get new WifiEntries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDiagnosisSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setButtonEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setConnectedVisibility(Z)V

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->updateConnectedEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_1

    .line 235
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setConnectedVisibility(Z)V

    .line 238
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->updateAllAccessPoints(Ljava/util/Collection;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateEmptyView(Z)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setAvailableVisibility(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    move-object v13, p0

    .line 126
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiDiagnosisSettings{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v7, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$2;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$2;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;Ljava/time/ZoneId;)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 144
    new-instance v14, Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mContext:Landroid/content/Context;

    iget-object v3, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    .line 147
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    move-object v0, v14

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/wifitrackerlib/SavedScannedTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    .line 154
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mLogRepository:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    .line 159
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 166
    sget p3, Lcom/android/settings/R$layout;->sec_wifi_developer_wifi_diagnosis_fragment:I

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 168
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p3}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object p3

    .line 170
    sget v0, Lcom/android/settings/R$id;->available_network_category:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableCategory:Landroid/widget/TextView;

    .line 171
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, p3, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    .line 172
    sget p3, Lcom/android/settings/R$id;->available_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-virtual {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;->setListener(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/OnRestartConnectingListener;)V

    .line 174
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mAvailableAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter;

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setupEntryRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 176
    sget p3, Lcom/android/settings/R$id;->connected_network_category:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    .line 177
    sget p3, Lcom/android/settings/R$id;->connected_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p3, v0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setupEntryRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    sget p3, Lcom/android/settings/R$id;->step_log_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepLogView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setupLogRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    sget p3, Lcom/android/settings/R$id;->no_saved_scanned_ap_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    .line 186
    sget p3, Lcom/android/settings/R$id;->go_to_manage_network:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mGoToManageNetwork:Landroid/widget/Button;

    .line 187
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries()V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    .line 209
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 195
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public onSavedWifiEntriesChanged()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public onStartConnecting(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    const-string v0, "WifiDiagnosisSettings"

    const-string v1, "onStartConnecting"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateStepLog()V

    return-void
.end method

.method public onSubscriptionWifiEntriesChanged()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setButtonEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->setButtonEnabled(Z)V

    :goto_0
    return-void
.end method
