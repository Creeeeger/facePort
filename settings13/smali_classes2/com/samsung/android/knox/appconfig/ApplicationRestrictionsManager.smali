.class public Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsManager.java"


# static fields
.field private static volatile sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

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
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->settingsRestrictionsPackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 75
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->sApplicationRestrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    .line 88
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method


# virtual methods
.method public getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 213
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 220
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method
