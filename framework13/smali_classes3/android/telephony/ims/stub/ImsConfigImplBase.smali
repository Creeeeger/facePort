.class public Landroid/telephony/ims/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsConfigImplBase$SetConfigResult;,
        Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field public static final whitelist CONFIG_RESULT_FAILED:I = 0x1

.field public static final whitelist CONFIG_RESULT_SUCCESS:I = 0x0

.field public static final whitelist CONFIG_RESULT_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field private final blacklist mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IRcsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsConfigData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationReceived([BZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationRemoved()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 578
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 601
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 602
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 578
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 597
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 598
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 578
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 590
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 591
    return-void
.end method

.method private greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 610
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 611
    return-void
.end method

.method private blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 658
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 659
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    if-eqz v0, :cond_0

    .line 661
    :try_start_0
    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder to call onConfigurationChanged, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyAutoConfigurationErrorReceived$4(ILjava/lang/String;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "errorString"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 868
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyAutoConfigurationErrorReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .param p0, "item"    # I
    .param p1, "value"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 633
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onIntConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(int): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$1(ILjava/lang/String;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .param p0, "item"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 649
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onStringConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(string): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyPreProvisioningReceived$5([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p0, "configXml"    # [B
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 894
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onPreProvisioningReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyPreProvisioningReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onNotifyRcsAutoConfigurationRemoved$3(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p0, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 701
    :try_start_0
    invoke-interface {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationRemoved, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private final greylist-max-o notifyConfigChanged(II)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 627
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 638
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyConfigChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 643
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 644
    return-void

    .line 646
    :cond_0
    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 654
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onNotifyRcsAutoConfigurationReceived([BZ)V
    .locals 3
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 674
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 675
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    return-void

    .line 678
    :cond_1
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 681
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_2

    .line 682
    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 690
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 692
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 693
    return-void
.end method

.method private blacklist onNotifyRcsAutoConfigurationRemoved()V
    .locals 3

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 697
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_0

    .line 698
    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 706
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 708
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationRemoved()V

    .line 709
    return-void
.end method

.method private greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 618
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 619
    return-void
.end method

.method private blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 669
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 670
    return-void
.end method


# virtual methods
.method public whitelist getConfigInt(I)I
    .locals 1
    .param p1, "item"    # I

    .line 802
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    .line 714
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public whitelist getRcsClientConfiguration(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .line 832
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$onNotifyRcsAutoConfigurationReceived$2$android-telephony-ims-stub-ImsConfigImplBase(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final whitelist notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 862
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    monitor-enter v0

    .line 866
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 873
    monitor-exit v0

    .line 874
    return-void

    .line 873
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist notifyPreProvisioningReceived([B)V
    .locals 3
    .param p1, "configXml"    # [B

    .line 888
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    .line 889
    return-void

    .line 891
    :cond_0
    monitor-enter v0

    .line 892
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 899
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist notifyProvisionedValueChanged(II)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 725
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(II)V

    .line 728
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(int): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public final whitelist notifyProvisionedValueChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 743
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;)V

    .line 746
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(string): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationReceived([BZ)V
    .locals 0
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 761
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationRemoved()V
    .locals 0

    .line 767
    return-void
.end method

.method public whitelist setConfig(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 778
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setConfig(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 790
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 909
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V

    .line 912
    :cond_0
    return-void
.end method

.method public whitelist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 0
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 843
    return-void
.end method

.method public whitelist triggerAutoConfiguration()V
    .locals 0

    .line 851
    return-void
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 821
    return-void
.end method
