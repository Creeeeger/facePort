.class public abstract Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBackupSizeAllowedItems:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mDeferredRestorationItems:Ljava/util/List;

.field public mRestoreRestrictedItems:Ljava/util/List;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public static loadPolicy(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider$1;

    invoke-direct {v0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public abstract getPolicyId()Ljava/lang/String;
.end method

.method public abstract getPolicyVersion()Ljava/lang/String;
.end method

.method public getRawPolicy()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public initializePolicy()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mDeferredRestorationItems:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializePolicy() context is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getRawPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeBackupPolicy() rawPolicy is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->updatePolicyItems(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializePolicy() + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public isValidProvider()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updatePolicyItems(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "policyVersion"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mVersion:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    const-string/jumbo v1, "sizeLimitation"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->loadPolicy(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    const-string/jumbo v1, "restoreRestriction"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->loadPolicy(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mDeferredRestorationItems:Ljava/util/List;

    const-string v1, "deferredRestoration"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->loadPolicy(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->getPolicyId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBackupSizeAllowedItems : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mBackupSizeAllowedItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRestoreRestrictedItems : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mRestoreRestrictedItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mDeferredRestorationItems : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/provider/PolicyProvider;->mDeferredRestorationItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
