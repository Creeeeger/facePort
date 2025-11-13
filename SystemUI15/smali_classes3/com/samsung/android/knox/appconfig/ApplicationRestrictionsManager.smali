.class public Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsManager"

.field public static volatile sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

.field public static final settingsRestrictionsPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->settingsRestrictionsPackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 3

    const-class v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.samsung.android.knox.kpecore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by com.samsung.android.knox.kpecore"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public getGalaxyAIKeyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/EdmConstants;->AI_TOP_LEVEL_KEYS:Ljava/util/List;

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public getSettingsRestrictionsPackageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->settingsRestrictionsPackageList:Ljava/util/List;

    return-object p0
.end method

.method public isSettingPolicyApplied()Z
    .locals 2

    const-string v0, "com.android.settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_1
    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_2
    move-object v4, p2

    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    iget-object v1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.kpecore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    :cond_2
    move-object v3, p2

    if-nez p3, :cond_3

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_3
    move-object v4, p3

    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    iget-object v1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public setKeyedAppStatesReport(Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_0
    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    move-object v4, p2

    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    iget-object v1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyedAppStatesReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    return p0
.end method
