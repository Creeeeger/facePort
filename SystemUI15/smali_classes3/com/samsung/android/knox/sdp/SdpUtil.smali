.class public Lcom/samsung/android/knox/sdp/SdpUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final ANDROID_DEFAULT_ALIAS:Ljava/lang/String; = "android_"

.field private static final ANDROID_DEFAULT_ALIAS_MAX:Ljava/lang/String; = "android_999"

.field private static final ANDROID_DEFAULT_USER_ID_MAX:I = 0x3e7

.field private static final ANDROID_DEFAULT_USER_ID_MIN:I = 0x0

.field private static final SDK_CURRENT_VERSION:D = 1.1

.field private static final SDK_NOT_SUPPORTED:D = 0.0

.field private static final SDK_VERSION_1_0:D = 1.0

.field private static final SDK_VERSION_1_1:D = 1.1

.field public static final SERVICE_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SdpUtil"

.field private static mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

.field private static final runAllConvert:Z


# instance fields
.field private mBinderListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private enforcePermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const-string p0, "dar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isLicensed()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v0, -0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "SdpUtil"

    const-string v1, "Failed to talk with sdp service..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static extractAndroidDefaultUserId(Ljava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xb

    if-lt v2, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v2, v0, :cond_3

    const-string v0, "android_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    aget-char v5, p0, v3

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-char v5, p0, v3

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    const-string v6, "num:"

    const-string v7, " index-"

    const-string v8, "SdpUtil"

    invoke-static {v5, v3, v6, v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v2, :cond_0

    add-int/2addr v4, v5

    goto :goto_1

    :cond_0
    int-to-double v6, v4

    int-to-double v4, v5

    sub-int v8, v0, v3

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v8, v6

    double-to-int v4, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public static getAndroidDefaultAlias(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android_"

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/SdpUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    return-object v0
.end method

.method public static isAndroidDefaultAlias(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result p0

    const-string v1, "detecected userId : "

    const-string v2, "SdpUtil"

    invoke-static {p0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ltz p0, :cond_1

    const/16 v1, 0x3e7

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isAndroidDefaultUser(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isKnoxWorkspace(I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->enforcePermission()V

    const-string p0, "dar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object p0

    const-string v0, "SdpUtil"

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "getEngineInfo :: Failed to call getEngineInfo"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string p0, "getEngineInfo :: Failed to talk with sdp service..."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 p1, -0xd

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p0
.end method

.method public isSdpSupported()Z
    .locals 2

    const-string p0, "dar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isSdpSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SdpUtil"

    const-string v1, "Failed to talk with sdp service..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Ljava/lang/String;Lcom/samsung/android/knox/sdp/SdpStateListener;)Z
    .locals 3

    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    invoke-direct {v2, p0, p2, v1}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;I)V

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/knox/dar/IDarManagerService;->registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    return v1

    :goto_0
    const-string p1, "SdpUtil"

    const-string p2, "RemoteException from call registerListener"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/sdp/SdpStateListener;)Z
    .locals 6

    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    invoke-static {v4}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->-$$Nest$mgetListener(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/samsung/android/knox/sdp/SdpStateListener;

    move-result-object v5

    if-ne v5, p2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, p1, v4}, Lcom/samsung/android/knox/dar/IDarManagerService;->unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return v1

    :catch_0
    move-exception p0

    const-string p1, "SdpUtil"

    const-string p2, "RemoteException from call unregisterListener"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
