.class public final Lcom/samsung/android/settings/eternal/policy/PolicyManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBackupPolicy:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

.field public mRestorePolicy:Lcom/samsung/android/settings/eternal/policy/RestorePolicy;


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/samsung/android/settings/eternal/manager/SupplierManager;)V
    .locals 9

    iget-object v0, p2, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mLatestVersionUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "Eternal/PolicyManager"

    if-nez v0, :cond_0

    const-string v0, "buildPolicyProvider() supplierInfo is null"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildPolicyProvider() latest dtd : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mDTDVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/eternal/policy/provider/LibraryPolicy;

    const-string v4, "getRemoteContextByPkgName() Get Context from pkg: "

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "EternalUtils"

    const/4 v7, 0x0

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v5

    goto :goto_0

    :catch_0
    const-string v4, "getRemoteContextByPkgName() Fatal case : No PKG with pkgName  - "

    invoke-static {v4, v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "Fatal case : No pkgName - "

    invoke-static {v4, v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v7, v3, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->initializePolicy()V

    const-string v0, "LibraryPolicy"

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/eternal/policy/provider/SCPMPolicy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->initializePolicy()V

    const-string p1, "SCPMPolicy"

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;

    invoke-direct {p1}, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;-><init>()V

    const-string v0, "DefaultPolicy"

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->isValidProvider()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLatestPolicyProvider() Invalid provider : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / sizeLimitAllow : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / restoreRestriction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / deferredRestoration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mDeferredRestorationItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;

    goto :goto_4

    :cond_5
    :goto_3
    new-instance p1, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;

    invoke-direct {p1}, Lcom/samsung/android/settings/eternal/policy/provider/DefaultPolicy;-><init>()V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize() latestPolicyProvider : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p2, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/settings/eternal/policy/PolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/eternal/policy/PolicyManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p2, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mBackupSizeLimitAllowItems:Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;-><init>(Ljava/util/HashMap;)V

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mPolicyValidator:Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mPolicyId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/policy/BackupPolicy;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/samsung/android/settings/eternal/policy/BackupPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/eternal/policy/BackupPolicy;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initializeBackupPolicy() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mPolicyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/settings/eternal/policy/BackupPolicy;->mBackupSizeLimitAllowItems:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Eternal/BackupPolicy"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mBackupPolicy:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    new-instance p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mRestoreRestrictionItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;-><init>(Ljava/util/HashMap;)V

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mPolicyValidator:Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mPolicyId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/policy/RestorePolicy;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, v4}, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/eternal/policy/RestorePolicy;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_RESTORE_EXCLUDED_ITEMS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    :goto_6
    iget-object v3, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mRestoreRestrictionItems:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initializeRestorePolicy() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mPolicyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mRestoreRestrictionItems:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (FloatingFeature - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Eternal/RestorePolicy"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mDeferredRestorationItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/eternal/policy/PolicyValidator;-><init>(Ljava/util/HashMap;)V

    iput-object v2, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mPolicyValidator:Lcom/samsung/android/settings/eternal/policy/PolicyValidator;

    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mPolicyId:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mDeferredRestorationItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/policy/RestorePolicy;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, v2}, Lcom/samsung/android/settings/eternal/policy/RestorePolicy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/eternal/policy/RestorePolicy;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initializeDeferredPolicy() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mPolicyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mDeferredRestorationItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mRestorePolicy:Lcom/samsung/android/settings/eternal/policy/RestorePolicy;

    return-void
.end method
