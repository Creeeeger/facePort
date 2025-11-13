.class public Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;


# instance fields
.field public final mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "CertProvisioningManager failed : "

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

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
    sget-object p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;

    return-object p0
.end method


# virtual methods
.method public provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisioningManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string/jumbo p2, "provisionCert failed : "

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
