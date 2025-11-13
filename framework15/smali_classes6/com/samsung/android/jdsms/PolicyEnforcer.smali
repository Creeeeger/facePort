.class final Lcom/samsung/android/jdsms/PolicyEnforcer;
.super Ljava/lang/Object;
.source "PolicyEnforcer.java"


# static fields
.field private static final blacklist SUBTAG:Ljava/lang/String; = "[POLICY] "

.field private static final blacklist mCallerVerifier:Lcom/samsung/android/jdsms/CallerVerifier;

.field private static final blacklist mUidAllowList:Lcom/samsung/android/jdsms/UidAllowList;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/UidAllowList;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/UidAllowList;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/PolicyEnforcer;->mUidAllowList:Lcom/samsung/android/jdsms/UidAllowList;

    new-instance v0, Lcom/samsung/android/jdsms/CallerVerifier;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/CallerVerifier;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/PolicyEnforcer;->mCallerVerifier:Lcom/samsung/android/jdsms/CallerVerifier;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final blacklist isAValidCaller()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/jdsms/PolicyEnforcer;->mCallerVerifier:Lcom/samsung/android/jdsms/CallerVerifier;

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/CallerVerifier;->wasCallerValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[POLICY] Unauthorized Caller"

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static final blacklist isAValidUser(Landroid/content/Context;)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "]"

    const-string v4, "] name ["

    if-nez v1, :cond_0

    sget-object v5, Lcom/samsung/android/jdsms/PolicyEnforcer;->mUidAllowList:Lcom/samsung/android/jdsms/UidAllowList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM_UID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/jdsms/UidAllowList;->containsUid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unauthorized OEM_UID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    return v2

    :cond_0
    sget-object v5, Lcom/samsung/android/jdsms/PolicyEnforcer;->mUidAllowList:Lcom/samsung/android/jdsms/UidAllowList;

    invoke-virtual {v5, v1}, Lcom/samsung/android/jdsms/UidAllowList;->containsUid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[POLICY] Unauthorized uid ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[POLICY] ALLOW uid ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method
