.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
.super Ljava/lang/Object;
.source "PermissionAccessInformation.java"


# static fields
.field private static final blacklist MIN_MS_SEC:J = 0xea60L


# instance fields
.field private blacklist mAccessTime:J

.field private blacklist mIsBackground:Z

.field private blacklist mOp:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mProxyAttributionTag:Ljava/lang/String;

.field private blacklist mProxyPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "proxyPackageName"    # Ljava/lang/String;
    .param p4, "proxyAttributionTag"    # Ljava/lang/String;
    .param p5, "isBackground"    # Z
    .param p6, "accessTime"    # J

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    .line 16
    iput-object p2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    if-eqz p4, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    .line 18
    iput-boolean p5, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    .line 19
    iput-wide p6, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    .line 20
    if-eqz p3, :cond_1

    move-object v0, p3

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    .line 48
    .local v2, "that":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    iget v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    iget v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    iget-boolean v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    iget-wide v7, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    div-long/2addr v7, v5

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 48
    :goto_0
    return v0

    .line 46
    .end local v2    # "that":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAccessTime()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    return-wide v0
.end method

.method public blacklist getOp()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProxyAttributionTag()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProxyPackageName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isBackground()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionAccessInformation{op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", proxyPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", proxyAttributionTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
