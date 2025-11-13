.class public Lcom/samsung/android/knox/container/KnoxContainerManager;
.super Ljava/lang/Object;
.source "KnoxContainerManager.java"


# instance fields
.field private volatile mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private volatile mEnterpriseBillingPolicyCreated:Z

.field private mNAPCreated:Z

.field private volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "Container with Id "

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 853
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    .line 2488
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    .line 909
    :try_start_0
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->checkContainerType(II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 917
    iput-object p2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 918
    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    return-void

    .line 910
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not exists"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 913
    new-instance p1, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exists. / "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkContainerType(II)Z
    .locals 5

    const-string/jumbo p0, "persist.sys.knox.userinfo"

    .line 924
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 926
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ":"

    .line 927
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 928
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 929
    aget-object v2, p0, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 930
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 931
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 932
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v3, p1, :cond_0

    and-int/2addr v2, p2

    if-lez v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;
    .locals 4

    .line 2502
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    if-nez v0, :cond_1

    .line 2504
    monitor-enter p0

    .line 2505
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    if-nez v0, :cond_0

    .line 2507
    new-instance v0, Lcom/samsung/android/knox/application/ApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/knox/ExternalDependencyInjectorImpl;

    invoke-direct {v3}, Lcom/samsung/android/knox/ExternalDependencyInjectorImpl;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 2510
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 3

    .line 2926
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1

    .line 2928
    monitor-enter p0

    .line 2929
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_0

    .line 2931
    new-instance v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 2933
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
