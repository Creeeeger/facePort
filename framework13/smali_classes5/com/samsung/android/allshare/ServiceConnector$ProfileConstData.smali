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

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    .line 675
    sget-boolean v0, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    .line 680
    const-string v0, "com.sec.android.allshare.framework.ServiceManager.START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    .line 682
    const-string v0, "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    .line 684
    const-string v0, "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    .line 686
    const-string v0, "com.sec.android.allshare.framework.ServiceManager"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    .line 688
    const-string v0, "com.sec.android.allshare.iface.subscriber"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    .line 690
    const-string v0, "com.sec.android.allshare.framework.SUBSCRIBE_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    .line 692
    const-string v0, "com.sec.android.allshare.framework.AllShareCpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    .line 694
    const-string v0, "com.sec.android.allshare.CpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    .line 675
    sget-boolean v2, Lcom/sec/android/allshare/iface/Const;->DEV_MODE:Z

    iput-boolean v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    .line 680
    const-string v2, "com.sec.android.allshare.framework.ServiceManager.START_SERVICE"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    .line 682
    const-string v2, "com.sec.android.allshare.framework.ServiceManager.START_COMPLETED"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    .line 684
    const-string v2, "com.sec.android.allshare.framework.ServiceManager.STOP_COMPLETED"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    .line 686
    const-string v2, "com.sec.android.allshare.framework.ServiceManager"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    .line 688
    const-string v2, "com.sec.android.allshare.iface.subscriber"

    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    .line 690
    const-string v3, "com.sec.android.allshare.framework.SUBSCRIBE_SERVICE"

    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    .line 692
    const-string v3, "com.sec.android.allshare.framework.AllShareCpName"

    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    .line 694
    const-string v3, "com.sec.android.allshare.CpName"

    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    .line 700
    const-string v3, "com.samsung.android.allshare.CpName"

    if-eqz p1, :cond_0

    .line 701
    const-string v4, "com.samsung.android.allshare.service.mediashare"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    .line 703
    sget-boolean v0, Lcom/samsung/android/allshare/media/Const;->DEV_MODE:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    .line 706
    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager.START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    .line 707
    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager.START_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    .line 708
    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager.STOP_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    .line 709
    const-string v0, "com.samsung.android.allshare.service.mediashare.ServiceManager"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    .line 710
    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    .line 711
    const-string v0, "com.samsung.android.allshare.service.mediashare.SUBSCRIBE_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    .line 712
    const-string v0, "com.samsung.android.allshare.service.mediashare.AllShareCpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    .line 713
    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    goto :goto_0

    .line 714
    :cond_0
    if-eqz p1, :cond_1

    .line 715
    const-string v4, "com.samsung.android.allshare.service.fileshare"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 716
    iput-wide v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->ALLSHARE_FRAMEWORK_VERSION:J

    .line 717
    sget-boolean v0, Lcom/samsung/android/allshare/file/Const;->DEV_MODE:Z

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->DEV_MODE:Z

    .line 720
    const-string v0, "com.samsung.android.allshare.service.fileshare.ServiceManager.START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_SERVICE:Ljava/lang/String;

    .line 721
    const-string v0, "com.samsung.android.allshare.service.fileshare.ServiceManager.START_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    .line 722
    const-string v0, "com.samsung.android.allshare.service.fileshare.ServiceManager.STOP_COMPLETED"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    .line 723
    const-string v0, "com.samsung.android.allshare.service.fileshare.ServiceManager"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SERVICE_MANAGER_NAME_VERSION_1:Ljava/lang/String;

    .line 724
    iput-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIBER_FIELD:Ljava/lang/String;

    .line 725
    const-string v0, "com.samsung.android.allshare.service.fileshare.SUBSCRIBE_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SUBSCRIPTION_MESSAGE:Ljava/lang/String;

    .line 726
    const-string v0, "com.samsung.android.allshare.service.fileshare.AllShareCpName"

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->SET_NAME_MESSAGE:Ljava/lang/String;

    .line 727
    iput-object v3, p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->CP_NAME:Ljava/lang/String;

    .line 729
    :cond_1
    :goto_0
    return-void
.end method
