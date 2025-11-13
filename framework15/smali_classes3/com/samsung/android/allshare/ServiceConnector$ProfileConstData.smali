.class Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileConstData"
.end annotation


# instance fields
.field public blacklist ALLSHARE_FRAMEWORK_VERSION:J

.field public blacklist CP_NAME:Ljava/lang/String;

.field public blacklist DEV_MODE:Z

.field public blacklist SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

.field public blacklist SET_NAME_MESSAGE:Ljava/lang/String;

.field public blacklist START_MESSAGE:Ljava/lang/String;

.field public blacklist START_SERVICE:Ljava/lang/String;

.field public blacklist STOP_MESSAGE:Ljava/lang/String;

.field public blacklist SUBSCRIBER_FIELD:Ljava/lang/String;

.field public blacklist SUBSCRIPTION_MESSAGE:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    const-string v0, "com.sec.android.allshare.framework.ServiceManager.START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.framework.ServiceManager"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.iface.subscriber"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.framework.SUBSCRIBE_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.framework.AllShareCpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    const-string v0, "com.sec.android.allshare.CpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    sget-boolean v2, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    iput-boolean v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    const-string v2, "com.sec.android.allshare.framework.ServiceManager.START_SERVICE"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    const-string v2, "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    const-string v2, "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    const-string v2, "com.sec.android.allshare.framework.ServiceManager"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    const-string v2, "com.sec.android.allshare.iface.subscriber"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    const-string v3, "com.sec.android.allshare.framework.SUBSCRIBE_SERVICE"

    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    const-string v3, "com.sec.android.allshare.framework.AllShareCpName"

    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    const-string v3, "com.sec.android.allshare.CpName"

    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v3, "com.samsung.android.allshare.service.mediashare"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    sget-boolean v0, Lcom/samsung/android/allshare/media/Const;->DEV_MODE:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager.START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager.START_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager.STOP_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    const-string v0, "com.samsung.android.allshare.service.mediashare.SUBSCRIBE_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    const-string v0, "com.samsung.android.allshare.service.mediashare.AllShareCpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    const-string v0, "com.samsung.android.allshare.CpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    :cond_0
    return-void
.end method
