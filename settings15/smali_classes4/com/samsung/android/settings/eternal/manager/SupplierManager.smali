.class public final Lcom/samsung/android/settings/eternal/manager/SupplierManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDtdVersionHashMap:Ljava/util/HashMap;

.field public final mLatestDTDVersion:Ljava/lang/String;

.field public final mLatestVersionUID:Ljava/lang/String;

.field public final mProviderVersions:Ljava/util/HashMap;

.field public final mResolveInfoHolder:Ljava/util/List;

.field public final mSupplierMap:Ljava/util/HashMap;

.field public final mUIDs:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.SCENE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mResolveInfoHolder:Ljava/util/List;

    const-string p2, "SupplierManager"

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "collectResolveInfos() resolveInfos size : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mResolveInfoHolder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "get_uid"

    const-string/jumbo v0, "uid"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->collectInfoFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mUIDs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "collectResolveInfos() uidHashMap is empty"

    invoke-static {p2, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string p1, "get_dtd_ver"

    const-string v0, "dtd_version"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->collectInfoFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mDtdVersionHashMap:Ljava/util/HashMap;

    const-string p1, "get_version"

    const-string/jumbo v0, "version"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->collectInfoFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mProviderVersions:Ljava/util/HashMap;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mLatestDTDVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mResolveInfoHolder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mUIDs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "buildSupplierList() - ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] UID is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mDtdVersionHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mUIDs:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mLatestDTDVersion:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_4

    iput-object v4, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mLatestDTDVersion:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mLatestVersionUID:Ljava/lang/String;

    :cond_4
    new-instance v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mUri:Landroid/net/Uri;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mDtdVersionHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mDTDVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mProviderVersions:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    const-string v5, "com.samsung.android.eternal.unsupported_solution"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mUnSupportedSolution:Ljava/lang/String;

    :cond_5
    iget-object v1, v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/eternal/data/SupplierInfo;-><init>(Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string v1, "SupplierInfo"

    const-string v4, "Supplier info build error"

    invoke-static {v1, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "buildSupplierList() -  UID : [\" + uid + \"], URI : ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is injected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :goto_3
    const-string p0, "collectResolveInfos() mResolveInfoHolder is empty"

    invoke-static {p2, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public final collectInfoFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mResolveInfoHolder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->createTask(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "get_value"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "get_label"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "set_value"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "set_value_all"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_4
    const-string v5, "get_settings_value"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_5
    const-string v5, "get_value_all"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    iget-object v3, v3, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mMultipleExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    :pswitch_0
    iget-object v3, v3, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mSingleExecutorService:Ljava/util/concurrent/ExecutorService;

    :goto_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    sget-object p0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->getResultBundle(Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dtd_version"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    const-string v1, ""

    :cond_9
    :goto_4
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xeef0fd6 -> :sswitch_5
        0x1c04525e -> :sswitch_4
        0x1f353e36 -> :sswitch_3
        0x37b05f54 -> :sswitch_2
        0x43ee18cb -> :sswitch_1
        0x447b2b48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
