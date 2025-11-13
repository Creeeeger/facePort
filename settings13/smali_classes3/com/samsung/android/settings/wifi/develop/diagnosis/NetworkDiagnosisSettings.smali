.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NetworkDiagnosisSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;


# instance fields
.field private mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

.field private mConnectedCategory:Landroid/widget/TextView;

.field private mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDadTest:Landroid/widget/Button;

.field private mEmptyView:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLaunchConnectivityTest:Landroid/widget/Button;

.field private mLaunchDnsTest:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

.field private mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mStepView:Landroid/widget/TextView;

.field private mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

.field private mTestInfoCategory:Landroid/widget/TextView;

.field private mTestInformation:Landroidx/recyclerview/widget/RecyclerView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field result:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Bm_hY7uhtci_BNoQAcHhIpbWXCc(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$launchConnectivityTest$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$CqG5pzq8M1BHHOKev-Qq-TtRgr0(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DnIBpiQAI-ffv8h2ox3CKLhbIjY(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$launchConnectivityTest$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lc6YgyBA-H4vr_CVPzwS0S4rHis(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M2woG8VimVRN3VRDJLfMANXmstE(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$launchConnectivityTest$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$NCZzi07740E50uScw8IdrKBhHWs(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$launchConnectivityTest$6(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RNdoWYfZDaZtmuZBmnEQQ7FuKu4(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHXbBxrYXqZLd1l2j2Jb-Oo8rVo(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$launchDnsTest$8(Landroid/net/Network;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHoU1YaWQdGW4x93DQJaAXHj7O4(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->lambda$launchDnsTest$7()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSavedScannedTracker(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)Lcom/android/wifitrackerlib/SavedScannedTracker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepView(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, ""

    .line 329
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    .line 393
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getCurrentWifiNetwork()Landroid/net/Network;
    .locals 6

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 475
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 476
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "https://"

    .line 487
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "http://"

    if-eqz v1, :cond_1

    .line 488
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 489
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 491
    :cond_2
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private getHttpsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "https://"

    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "http://"

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 505
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 507
    :cond_2
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private synthetic lambda$launchConnectivityTest$3()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$launchConnectivityTest$4()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$launchConnectivityTest$5()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$launchConnectivityTest$6(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 377
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;-><init>(Landroid/content/Context;Landroid/net/Network;)V

    .line 378
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->getDnsTestStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    .line 379
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->getHttpTestStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    .line 383
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    invoke-virtual {v0, p4}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->getHttpsTestStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    .line 387
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$launchDnsTest$7()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$launchDnsTest$8(Landroid/net/Network;Ljava/lang/String;)V
    .locals 2

    .line 428
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;-><init>(Landroid/content/Context;Landroid/net/Network;)V

    .line 429
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->getDnsTestStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    .line 430
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->launchConnectivityTest()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->launchDnsTest()V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->launchDadTest()V

    return-void
.end method

.method private launchConnectivityTest()V
    .locals 11

    const-string v0, "INVALID"

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "NetworkDiagnosisSettings"

    const-string v0, "[launchConnectivityTest] network is null"

    .line 334
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScrollY(I)V

    .line 338
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v2, "Start Connectivity Test\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->getSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->getSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->getSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v9}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 350
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v9, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v2

    const-string v9, "\n"

    const-string v10, ""

    if-nez v2, :cond_3

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "DEFAULT TEST SERVER"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "DNS server is not valid. Default Test Server will be used\n"

    .line 354
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object v0, v10

    .line 360
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v1

    const-string v2, "DEFAULT TEST URL"

    if-nez v1, :cond_6

    .line 361
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP URL : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    move-object v5, v6

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v1, "HTTP URL is not valid. Default Test URL will be used\n"

    .line 364
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 368
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTPS URL : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    move-object v2, v8

    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string v1, "HTTPS URL is not valid. Default Test URL will be used\n"

    .line 371
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 376
    new-instance v7, Ljava/lang/Thread;

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v0

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 390
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private launchDadTest()V
    .locals 7

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v1, "Start DAD Test\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 451
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 452
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 456
    :goto_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "NetworkDiagnosisSettings"

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 457
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 458
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gateway="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 465
    :try_start_0
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;-><init>()V

    .line 466
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v1, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->sendGArp(Landroid/net/LinkProperties;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private launchDnsTest()V
    .locals 5

    const-string v0, "INVALID"

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "NetworkDiagnosisSettings"

    const-string v0, "[launchDnsTest] network is null\n"

    .line 405
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v3, "Start DNS Test\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->getSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 416
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_3

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    const-string v4, "DEFAULT TEST SERVER"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v2, "DNS server is not valid. Default Test Server will be used\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_3
    move-object v2, v4

    .line 427
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setButtonEnabled(Z)V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mLaunchConnectivityTest:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mLaunchConnectivityTest:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mLaunchDnsTest:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mLaunchDnsTest:Landroid/widget/Button;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mDadTest:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mDadTest:Landroid/widget/Button;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private setConnectedVisibility(Z)V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoCategory:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInformation:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/16 v0, 0xf

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 300
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 300
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
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

    .line 273
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 274
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 275
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 277
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private setupRecyclerViewForInfo(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;",
            ">;)V"
        }
    .end annotation

    .line 281
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 282
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 283
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 285
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setRoundedCorner(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateWifiEntries()V
    .locals 7

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get new WifiEntries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkDiagnosisSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 231
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

    .line 232
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setConnectedVisibility(Z)V

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;->updateConnectedEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 235
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setButtonEnabled(Z)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setConnectedVisibility(Z)V

    .line 238
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setButtonEnabled(Z)V

    :goto_0
    if-eqz v1, :cond_1

    move v3, v4

    .line 240
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateEmptyView(Z)V

    if-nez v1, :cond_2

    return-void

    .line 243
    :cond_2
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const-string v1, "Captive Portal network. Sign in required"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->setCurrentState(Ljava/lang/String;)V

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 253
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 267
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const-string v0, "Connected"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->setCurrentState(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const-string v0, "The current network provides internet connectivity.However, the device is using mobile data because the internet is slow or unstable."

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->setCurrentState(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const-string v0, "The current network doesn\'t provide internet connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->setCurrentState(Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const-string v0, "The current network provides internet connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->setCurrentState(Ljava/lang/String;)V

    :goto_1
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

    .line 137
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkDiagnosisSettings{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
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

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v7, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$2;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$2;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Ljava/time/ZoneId;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 154
    new-instance v14, Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    iget-object v3, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v5, Landroid/os/Handler;

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 158
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    move-object v0, v14

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/wifitrackerlib/SavedScannedTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedScannedTracker$SavedScannedTrackerCallback;)V

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    .line 164
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mSavedScannedTracker:Lcom/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 173
    sget p3, Lcom/android/settings/R$layout;->sec_wifi_developer_network_diagnosis_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 176
    sget p2, Lcom/android/settings/R$id;->connected_network_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedCategory:Landroid/widget/TextView;

    .line 177
    sget p2, Lcom/android/settings/R$id;->connected_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    new-instance p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    .line 179
    sget p2, Lcom/android/settings/R$id;->test_information_category:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoCategory:Landroid/widget/TextView;

    .line 180
    sget p2, Lcom/android/settings/R$id;->test_information:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInformation:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    new-instance p2, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    .line 183
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectedAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisConnectedWifiEntryListAdapter;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInformation:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->setupRecyclerViewForInfo(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 186
    sget p2, Lcom/android/settings/R$id;->launch_connectivity_test:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mLaunchConnectivityTest:Landroid/widget/Button;

    .line 187
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget p2, Lcom/android/settings/R$id;->launch_dns_test:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mLaunchDnsTest:Landroid/widget/Button;

    .line 189
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget p2, Lcom/android/settings/R$id;->check_dad:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mDadTest:Landroid/widget/Button;

    .line 192
    new-instance p3, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget p2, Lcom/android/settings/R$id;->no_saved_scanned_ap_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mEmptyView:Landroid/widget/TextView;

    .line 195
    sget p2, Lcom/android/settings/R$id;->step_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    .line 196
    new-instance p3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 203
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public onSavedWifiEntriesChanged()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public onSubscriptionWifiEntriesChanged()V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries()V

    return-void
.end method
