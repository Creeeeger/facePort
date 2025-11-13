.class public Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;
.super Landroid/app/IntentService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "EdgeLightingPolicyUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static startActionUpdate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ELPolicyUpdateService"

    const-string/jumbo v1, "startActionUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.edgelighting.action.UPDATE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.edgelighting.action.UPDATE_POLICY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.sm.policy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateEdgeLightingServerPolicy : isSCPMClientExist = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ELPolicyManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    const-string v1, "EdgeLighting"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyList;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "policyVersion"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const-string v7, "policyName=?"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PolicyVersion"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    cmp-long v1, v4, v1

    if-lez v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->EL_POLICY_ITEM_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->POLICY_ITEM_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "category"

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v6, 0x2

    if-eqz v2, :cond_4

    :cond_3
    :goto_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->createPolicyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mCategoryComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-wide v4, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, p1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget v5, v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    packed-switch v5, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/16 v5, 0xa

    goto :goto_6

    :pswitch_1
    move v5, v6

    goto :goto_6

    :pswitch_2
    move v5, p1

    :goto_6
    if-eq v3, v5, :cond_9

    iget-object v7, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_8
    move v3, v5

    :cond_9
    iget v5, v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    iget-object v7, v4, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    packed-switch v5, :pswitch_data_1

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :pswitch_3
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    iget-object p1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    :goto_7
    iget-wide v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    iget p1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
