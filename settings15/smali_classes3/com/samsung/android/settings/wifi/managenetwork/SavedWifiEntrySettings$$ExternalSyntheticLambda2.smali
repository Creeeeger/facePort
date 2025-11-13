.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getCheckedCount$1()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "WIFI_220"

    const-string v0, "12512"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mSavedWifiEntries:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsChecked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mWifiEntryCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->isRemovableNetwork()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;)V

    invoke-virtual {v2, v1}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mWifiEntryCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mWifiEntryCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setMode$2(I)V

    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToRemove(Landroid/net/wifi/WifiConfiguration;)V

    const-string v1, "SavedWifiEntryListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method
