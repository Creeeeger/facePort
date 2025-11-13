.class public Lcom/samsung/android/knox/cmfa/CmfaManager;
.super Ljava/lang/Object;
.source "CmfaManager.java"


# static fields
.field private static CMFA_PERM:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CmfaManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 48
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    return-void
.end method

.method private checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 654
    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/samsung/android/knox/AccessController;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 655
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPermission cxtInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has permission: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 660
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 658
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "checkPermission: false is returned."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private getService()Lcom/samsung/android/knox/cmfa/ICmfaService;
    .locals 0

    const-string p0, "cmfa"

    .line 667
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValidActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/cmfa/AuthActionType;",
            ">;"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getValidActions()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Leave getValidActions() with permission error!"

    .line 200
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 205
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 207
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getValidActions()Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_1
    const-string p0, "getValidActions getService failed!"

    .line 209
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 212
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leave getValidActions() with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isEnabled()Z
    .locals 4

    .line 76
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Leave isEnabled() with permission error!"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 86
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isEnabled()Z

    move-result p0

    move v2, p0

    goto :goto_0

    :cond_1
    const-string p0, "isEnabled getService failed!"

    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leave isEnabled() with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isStarted()Z
    .locals 4

    .line 116
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Leave isStarted() with permission error!"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 126
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isStarted()Z

    move-result p0

    move v2, p0

    goto :goto_0

    :cond_1
    const-string p0, "isStarted getService failed!"

    .line 130
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leave isStarted() with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public start(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 4

    .line 411
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const-string v2, "Leave start() with "

    if-nez v1, :cond_0

    const/4 p0, 0x3

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 424
    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$2;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    invoke-interface {v3, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->start(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "start getService failed!"

    .line 436
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 439
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public stop(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 4

    .line 473
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const-string v2, "Leave stop() with "

    if-nez v1, :cond_0

    const/4 p0, 0x3

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 486
    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$3;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    invoke-interface {v3, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->stop(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "stop getService failed!"

    .line 498
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 501
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
