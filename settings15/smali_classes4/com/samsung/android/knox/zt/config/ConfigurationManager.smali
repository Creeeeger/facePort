.class public Lcom/samsung/android/knox/zt/config/ConfigurationManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/config/ConfigurationManager$KnoxZtFeature;
    }
.end annotation


# static fields
.field public static final FEATURE_SECURE_LOG:Ljava/lang/String; = "secureLog"

.field public static KNOXZT_PERM:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CODE_FAIL_FEATURE_UNAVAILABLE:I = 0x4

.field public static final RESULT_CODE_FAIL_PERMISSION_ERROR:I = 0x3

.field public static final RESULT_CODE_FAIL_SERVICE_UNAVAILABLE:I = 0x1

.field public static final RESULT_CODE_FAIL_WRONG_ARGUMENT:I = 0x2

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final SERVICE_NAME_KNOXZT_CORE:Ljava/lang/String; = "knoxztcore"

.field public static final TAG:Ljava/lang/String; = "ConfigurationManager"

.field public static volatile sInstance:Lcom/samsung/android/knox/zt/config/ConfigurationManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/zt/config/ITrustEventListener;",
            "Lcom/samsung/android/knox/zt/config/IEventListener;",
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

    sput-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->KNOXZT_PERM:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->mListeners:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/config/ConfigurationManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->sInstance:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->sInstance:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->sInstance:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->sInstance:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    return-object p0
.end method


# virtual methods
.method public check(Lcom/samsung/android/knox/zt/config/ITrustResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter check()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/zt/config/ConfigurationManager$1;-><init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->check(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave check() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public configFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/knox/zt/config/ConfigurationManager$KnoxZtFeature;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter configFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "{\"resultCode\":3}"

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->configFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave configFeature() with "

    invoke-static {p1, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public disable()I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->disable()I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "disable getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave disable() with "

    invoke-static {v1, v0, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public disableFeature(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/knox/zt/config/ConfigurationManager$KnoxZtFeature;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter disableFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->disableFeature(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave disableFeature() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public enable(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->enable(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public enable(Ljava/lang/String;Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->enable(Ljava/lang/String;Z)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "enable getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave enable() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public enableFeature(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/knox/zt/config/ConfigurationManager$KnoxZtFeature;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter enableFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->enableFeature(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave enableFeature() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/knox/zt/config/ConfigurationManager$KnoxZtFeature;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "{\"resultCode\":1}"

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->getConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "check getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave getConfiguration() with "

    invoke-static {p1, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getFactorsToSetup()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/zt/config/TrustFactorType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getFactorsToSetup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->getFactorsToSetup()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "getFactorsToSetup getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Leave getFactorsToSetup() with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-string p0, "android.os.ServiceManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "knoxztcore"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "failed to find knoxztcore service"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValidActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/zt/config/TrustActionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter getValidActions()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->getValidActions()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "getValidActions getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->isEnabled()Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "isEnabled getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave isEnabled() with "

    invoke-static {v0, p0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public isStarted()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter isStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->isStarted()Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "isStarted getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v0, "Leave isStarted() with "

    invoke-static {v0, p0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public notifyTestFactorScoreChange(Ljava/lang/String;JZ)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter notifyTestFactorScoreChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->notifyTestFactorScoreChange(Ljava/lang/String;JZ)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "notifyTestFactorScoreChange getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave notifyTestFactorScoreChange() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public registerListener(Lcom/samsung/android/knox/zt/config/ITrustEventListener;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter registerListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->mListeners:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;-><init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustEventListener;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/zt/config/IEventListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->registerListener(Lcom/samsung/android/knox/zt/config/IEventListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "registerListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave registerListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public start(Lcom/samsung/android/knox/zt/config/ITrustResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/zt/config/ConfigurationManager$2;-><init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->start(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "start getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave start() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public stop(Lcom/samsung/android/knox/zt/config/ITrustResultListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/zt/config/ConfigurationManager$3;-><init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustResultListener;)V

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->stop(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "stop getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave stop() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/knox/zt/config/ITrustEventListener;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter unregisterListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->getService()Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/zt/config/IEventListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->unregisterListener(Lcom/samsung/android/knox/zt/config/IEventListener;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unregisterListener getService failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave unregisterListener() with "

    invoke-static {v1, p1, p0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method
