.class public Lcom/samsung/android/knox/keystore/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = "CertificatePolicy"


# instance fields
.field private mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    .line 151
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object p0
.end method


# virtual methods
.method public isOcspCheckEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1154
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1158
    sget-object p1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1045
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1049
    sget-object p1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
