.class public Lcom/samsung/android/knox/cmfa/CmfaManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static CMFA_PERM:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CODE_FAIL_PERMISSION_ERROR:I = 0x3

.field public static final RESULT_CODE_FAIL_SERVICE_UNAVAILABLE:I = 0x1

.field public static final RESULT_CODE_FAIL_WRONG_ARGUMENT:I = 0x2

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CmfaManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/cmfa/IAuthEventListener;",
            "Lcom/samsung/android/knox/cmfa/IEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public check(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter check()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave check() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$1;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->check(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave check() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string p0, "checkPermission cxtInfo"

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/AccessController;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has permission: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecurityException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "checkPermission: false is returned."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disable()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave disable() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->disable()I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "disable getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave disable() with "

    invoke-static {v1, v0, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public enable(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->enable(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public enable(Ljava/lang/String;Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave enable() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/cmfa/ICmfaService;->enable(Ljava/lang/String;Z)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "enable getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave enable() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getFactorsToSetup()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getFactorsToSetup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Leave getFactorsToSetup() with permission error!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getFactorsToSetup()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "getFactorsToSetup getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Leave getFactorsToSetup() with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getService()Lcom/samsung/android/knox/cmfa/ICmfaService;
    .locals 0

    const-string p0, "cmfa"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    return-object p0
.end method

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

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getValidActions()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Leave getValidActions() with permission error!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getValidActions()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "getValidActions getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Leave getValidActions() with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isEnabled()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Leave isEnabled() with permission error!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isEnabled()Z

    move-result v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "isEnabled getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave isEnabled() with "

    invoke-static {v0, p0, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public isStarted()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Leave isStarted() with permission error!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isStarted()Z

    move-result v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "isStarted getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave isStarted() with "

    invoke-static {v0, p0, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public notifyTestFactorScoreChange(Ljava/lang/String;JZ)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter notifyTestFactorScoreChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave notifyTestFactorScoreChange() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/cmfa/ICmfaService;->notifyTestFactorScoreChange(Ljava/lang/String;JZ)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "notifyTestFactorScoreChange getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave notifyTestFactorScoreChange() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public registerListener(Lcom/samsung/android/knox/cmfa/IAuthEventListener;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter registerListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave registerListener() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/knox/cmfa/CmfaManager$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$4;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthEventListener;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/cmfa/IEventListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->registerListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "registerListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave registerListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public start(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave start() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$2;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->start(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "start getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave start() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public stop(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave stop() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$3;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->stop(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave stop() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/knox/cmfa/IAuthEventListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter unregisterListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave unregisterListener() with 3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/cmfa/IEventListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->unregisterListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "unregisterListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave unregisterListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method
