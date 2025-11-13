.class public Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SwitchForIndividualAppsSettings.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;,
        Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;
    }
.end annotation


# instance fields
.field private final DETECTION_MODE_ALL_APP_EXCEPT_SYSTEM:I

.field private final DETECTION_MODE_CHAT_ONLY:I

.field private final DETECTION_MODE_FILTERED_APP:I

.field private final FILE_TCP_MONITOR_PACKAGE_INFO:Ljava/lang/String;

.field private final FILE_TCP_SWITCHABLE_UID_INFO:Ljava/lang/String;

.field private final TEXT_CHATTING_APP:Ljava/lang/String;

.field private final TEXT_DATA:Ljava/lang/String;

.field private final TEXT_PACKAGE_NAME:Ljava/lang/String;

.field private final TEXT_SWITCHABLE:Ljava/lang/String;

.field private final TEXT_SYSTEM_APP:Ljava/lang/String;

.field private final TEXT_UID:Ljava/lang/String;

.field private mAdapter:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mDetectionMode:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSuggestionUid:I

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mSwitchEnabledUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchablePackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendListChangedBroadcast(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->sendListChangedBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConfigureChanges(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->updateConfigureChanges()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 90
    iput v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->DETECTION_MODE_CHAT_ONLY:I

    const/4 v1, 0x1

    .line 91
    iput v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->DETECTION_MODE_FILTERED_APP:I

    const/4 v1, 0x2

    .line 92
    iput v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->DETECTION_MODE_ALL_APP_EXCEPT_SYSTEM:I

    .line 94
    iput v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDetectionMode:I

    .line 96
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    .line 526
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->FILE_TCP_SWITCHABLE_UID_INFO:Ljava/lang/String;

    const-string v0, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 590
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->FILE_TCP_MONITOR_PACKAGE_INFO:Ljava/lang/String;

    const-string v0, "Data"

    .line 592
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->TEXT_DATA:Ljava/lang/String;

    const-string v0, "UID"

    .line 593
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->TEXT_UID:Ljava/lang/String;

    const-string v0, "PackageName"

    .line 594
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->TEXT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Switchable"

    .line 595
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->TEXT_SWITCHABLE:Ljava/lang/String;

    const-string v0, "SystemApp"

    .line 596
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->TEXT_SYSTEM_APP:Ljava/lang/String;

    const-string v0, "ChattingApp"

    .line 597
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->TEXT_CHATTING_APP:Ljava/lang/String;

    return-void
.end method

.method private isNotifyEnabledApp(ZZZ)Z
    .locals 1

    .line 609
    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDetectionMode:I

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    return v0

    :cond_1
    if-eqz p2, :cond_3

    return v0

    :cond_2
    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSwitchForIndividualAppsEnabled()Z
    .locals 2

    .line 479
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_switch_for_individual_apps_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isSwitchableApp(I)Z
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchablePackageList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadAppList()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 288
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 289
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v2, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 294
    :cond_0
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1

    .line 295
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->isSwitchableApp(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SwitchForIndividualAppsSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$4;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mAdapter:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->-$$Nest$msetList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Ljava/util/List;)V

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mAdapter:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const-string p0, "readJSONObjectFromFile - "

    const-string v0, "readJSONObjectFromFile - bufReader "

    const-string v1, "readJSONObjectFromFile - fileReader "

    const-string v2, "SwitchForIndividualAppsSettings"

    const-string v3, "readJSONObjectFromFile"

    .line 658
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 664
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 668
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object p1, v6

    .line 684
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 692
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception p0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v5

    goto/16 :goto_5

    :catch_4
    move-exception v5

    goto/16 :goto_7

    :catch_5
    move-exception v5

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    move-object v3, p1

    :goto_2
    move-object p1, v4

    goto/16 :goto_c

    :catch_6
    move-exception v5

    move-object v3, p1

    goto :goto_3

    :catch_7
    move-exception v5

    move-object v3, p1

    goto :goto_5

    :catch_8
    move-exception v5

    move-object v3, p1

    goto/16 :goto_7

    :catch_9
    move-exception v5

    move-object v3, p1

    goto/16 :goto_9

    :catchall_1
    move-exception p0

    move-object v3, p1

    goto/16 :goto_c

    :catch_a
    move-exception v5

    move-object v3, p1

    move-object v4, v3

    .line 679
    :goto_3
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_1

    .line 684
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_4

    :catch_b
    move-exception p0

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v3, :cond_5

    .line 692
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_b

    :catch_c
    move-exception p0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_d
    move-exception v5

    move-object v3, p1

    move-object v4, v3

    .line 676
    :goto_5
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_2

    .line 684
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_6

    :catch_e
    move-exception p0

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v3, :cond_5

    .line 692
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_b

    :catch_f
    move-exception p0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :catch_10
    move-exception v5

    move-object v3, p1

    move-object v4, v3

    .line 673
    :goto_7
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_3

    .line 684
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_8

    :catch_11
    move-exception p0

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_8
    if-eqz v3, :cond_5

    .line 692
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_b

    :catch_12
    move-exception p0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :catch_13
    move-exception v5

    move-object v3, p1

    move-object v4, v3

    .line 670
    :goto_9
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v4, :cond_4

    .line 684
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_14

    goto :goto_a

    :catch_14
    move-exception p0

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    .line 692
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15

    goto :goto_b

    :catch_15
    move-exception p0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    :cond_5
    :goto_b
    return-object p1

    :catchall_2
    move-exception p0

    goto/16 :goto_2

    :goto_c
    if-eqz p1, :cond_6

    .line 684
    :try_start_11
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16

    goto :goto_d

    :catch_16
    move-exception p1

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_d
    if-eqz v3, :cond_7

    .line 692
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17

    goto :goto_e

    :catch_17
    move-exception p1

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 698
    :cond_7
    :goto_e
    throw p0
.end method

.method private readSwitchEnabledUidInfoList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "readSwitchEnabledUidInfoList - bufReader "

    const-string v0, "readSwitchEnabledUidInfoList - fileReader "

    const-string v1, "SwitchForIndividualAppsSettings"

    const-string v2, "readSwitchEnabledUidInfoList"

    .line 529
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 537
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 538
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 543
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 558
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 566
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v4

    goto/16 :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :catchall_0
    move-exception v2

    move-object v3, v4

    :goto_3
    move-object v4, v5

    goto/16 :goto_b

    :catch_5
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_4

    :catch_6
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_6

    :catch_7
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_8

    :catchall_1
    move-exception v2

    move-object v3, v4

    goto/16 :goto_b

    :catch_8
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 553
    :goto_4
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSwitchEnabledUidInfoList - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_1

    .line 558
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_5

    :catch_9
    move-exception v4

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_5
    if-eqz v3, :cond_4

    .line 566
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_a

    :catch_a
    move-exception v0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_b
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 550
    :goto_6
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSwitchEnabledUidInfoList - IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_2

    .line 558
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_7

    :catch_c
    move-exception v4

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_7
    if-eqz v3, :cond_4

    .line 566
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_a

    :catch_d
    move-exception v0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catch_e
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 547
    :goto_8
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSwitchEnabledUidInfoList - FileNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v5, :cond_3

    .line 558
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_9

    :catch_f
    move-exception v4

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    if-eqz v3, :cond_4

    .line 566
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_a

    :catch_10
    move-exception v0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :cond_4
    :goto_a
    return-object v2

    :catchall_2
    move-exception v2

    goto/16 :goto_3

    :goto_b
    if-eqz v4, :cond_5

    .line 558
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    goto :goto_c

    :catch_11
    move-exception v4

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_c
    if-eqz v3, :cond_6

    .line 566
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_12

    goto :goto_d

    :catch_12
    move-exception v0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 572
    :cond_6
    :goto_d
    throw v2
.end method

.method private readSwitchablePackageList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SwitchForIndividualAppsSettings"

    const-string v1, "readSwitchablePackageList"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 633
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "Data"

    .line 636
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 637
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 638
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "UID"

    .line 640
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "PackageName"

    .line 641
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChattingApp"

    .line 642
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Switchable"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "SystemApp"

    .line 643
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 642
    invoke-direct {p0, v7, v8, v4}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->isNotifyEnabledApp(ZZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readSwitchablePackageList - add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readSwitchablePackageList - JSONException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method private sendListChangedBroadcast()V
    .locals 3

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    const-string v2, "UID_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setActionBarTitle()V
    .locals 2

    .line 172
    sget v0, Lcom/android/settings/R$string;->wifi_smart_network_switch_switch_for_individual_apps:I

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateConfigureChanges()V
    .locals 4

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMobileDataObserver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwitchForIndividualAppsSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateListView()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->isSwitchForIndividualAppsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 234
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateListView - null view - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SwitchForIndividualAppsSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 581
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->readSwitchablePackageList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchablePackageList:Ljava/util/ArrayList;

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->readSwitchEnabledUidInfoList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "UID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_switch_for_individual_apps_detection_mode"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDetectionMode:I

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDetectionMode - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDetectionMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwitchForIndividualAppsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->setActionBarTitle()V

    .line 164
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mFilter:Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "SwitchForIndividualAppsSettings"

    const-string p3, "onCreateView"

    .line 181
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 184
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->isSwitchForIndividualAppsEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 186
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 188
    sget p2, Lcom/android/settings/R$layout;->wifi_switch_for_individual_apps:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRootView:Landroid/view/View;

    .line 190
    sget p2, Lcom/android/settings/R$id;->apps_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 192
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mApps:Ljava/util/List;

    invoke-direct {p1, p0, p0, p2}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Ljava/util/List;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mAdapter:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->isSwitchForIndividualAppsEnabled()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->-$$Nest$msetEnabled(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Z)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mAdapter:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 202
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->empty_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mEmptyView:Landroid/view/View;

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->updateListView()V

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->loadAppList()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SwitchForIndividualAppsSettings"

    const-string v1, "onPause"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "SwitchForIndividualAppsSettings"

    const-string v1, "onResume"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->isSwitchForIndividualAppsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->readSwitchablePackageList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchablePackageList:Ljava/util/ArrayList;

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->readSwitchEnabledUidInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->updateListView()V

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->loadAppList()V

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 259
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 258
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    .line 261
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 260
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 276
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 281
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwitchForIndividualAppsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "wifi_switch_for_individual_apps_enabled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    .line 220
    iget p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    if-lez p1, :cond_1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSwitchChanged - enable by suggestion mode - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    iget p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSwitchEnabledUidList:Ljava/util/ArrayList;

    iget p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->mSuggestionUid:I

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->sendListChangedBroadcast()V

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->updateListView()V

    return-void
.end method
