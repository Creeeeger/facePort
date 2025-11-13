.class public final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "BinderProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderProxy$NoImagePreloadHolder;,
        Landroid/os/BinderProxy$InterfaceCount;,
        Landroid/os/BinderProxy$ProxyMap;,
        Landroid/os/BinderProxy$BinderProxyMapSizeException;
    }
.end annotation


# static fields
.field private static final blacklist GMS_SHORT_LOOKUP:Ljava/lang/String; = "gms.loc"

.field private static final blacklist NATIVE_ALLOCATION_SIZE:I = 0x3e8

.field private static final blacklist sProxyMap:Landroid/os/BinderProxy$ProxyMap;

.field private static volatile blacklist sTransactListener:Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field private final blacklist mNativeData:J

.field volatile blacklist mWarnOnBlocking:Z

.field private blacklist msgForGoogleLocation:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;
    .locals 1

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/os/BinderProxy;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 67
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 403
    new-instance v1, Landroid/os/BinderProxy$ProxyMap;

    invoke-direct {v1, v0}, Landroid/os/BinderProxy$ProxyMap;-><init>(Landroid/os/BinderProxy$ProxyMap-IA;)V

    sput-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 1
    .param p1, "nativeData"    # J

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    .line 491
    iput-wide p1, p0, Landroid/os/BinderProxy;->mNativeData:J

    .line 492
    return-void
.end method

.method private blacklist customContains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/String;

    .line 812
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 813
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    return v0

    .line 814
    :cond_1
    const/4 v1, 0x0

    .line 815
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 816
    add-int/lit8 v2, v1, 0x13

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string/jumbo v3, "gms.loc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 817
    return v0

    .line 819
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist dumpProxyDebugInfo()V
    .locals 1

    .line 451
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 453
    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 455
    :cond_0
    return-void
.end method

.method private static blacklist getInstance(JJ)Landroid/os/BinderProxy;
    .locals 4
    .param p0, "nativeData"    # J
    .param p2, "iBinder"    # J

    .line 470
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 472
    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/os/BinderProxy$ProxyMap;->get(J)Landroid/os/BinderProxy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .local v1, "result":Landroid/os/BinderProxy;
    if-eqz v1, :cond_0

    .line 474
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 476
    :cond_0
    :try_start_2
    new-instance v2, Landroid/os/BinderProxy;

    invoke-direct {v2, p0, p1}, Landroid/os/BinderProxy;-><init>(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 482
    nop

    .line 483
    :try_start_3
    sget-object v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, v1, p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 485
    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BinderProxy$ProxyMap;->set(JLandroid/os/BinderProxy;)V

    .line 486
    monitor-exit v0

    .line 487
    return-object v1

    .line 477
    .end local v1    # "result":Landroid/os/BinderProxy;
    :catchall_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Throwable;
    sget-wide v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    invoke-static {v2, v3, p0, p1}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    .line 481
    nop

    .end local p0    # "nativeData":J
    .end local p2    # "iBinder":J
    throw v1

    .line 486
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p0    # "nativeData":J
    .restart local p2    # "iBinder":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method public static blacklist getProxyCount()I
    .locals 2

    .line 440
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 441
    :try_start_0
    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .locals 1
    .param p0, "num"    # I

    .line 432
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0, p0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isMsgForGoogleLocation(Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;

    .line 796
    iget v0, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 797
    return v1

    .line 798
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 799
    return v2

    .line 802
    :cond_1
    iput v2, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    .line 804
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BinderProxy;->customContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    iput v3, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    .line 806
    return v2

    .line 808
    :cond_2
    return v1
.end method

.method private static blacklist sendDeathNotice(Landroid/os/IBinder$DeathRecipient;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p1, "binderProxy"    # Landroid/os/IBinder;

    .line 781
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string v1, "BinderNative"

    const-string v2, "Uncaught exception from death notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private blacklist sendInfoToNSFLP(ILandroid/os/Parcel;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;

    .line 825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .line 830
    .local v1, "locationManager":Landroid/location/ILocationManager;
    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 833
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 835
    sget-object v2, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelableParcel;

    .line 837
    .local v2, "pp":Landroid/os/ParcelableParcel;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 838
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pp"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 839
    const-string/jumbo v4, "interfaceName"

    invoke-virtual {p2}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string/jumbo v4, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 841
    const-string/jumbo v4, "pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 844
    .local v4, "msg":Landroid/os/Message;
    const/16 v5, 0xc8

    iput v5, v4, Landroid/os/Message;->what:I

    .line 845
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 846
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 848
    invoke-interface {v1, v4}, Landroid/location/ILocationManager;->notifyNSFLP(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    .end local v1    # "locationManager":Landroid/location/ILocationManager;
    .end local v2    # "pp":Landroid/os/ParcelableParcel;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    goto :goto_1

    .line 854
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Binder_FLP"

    const-string v3, "failed to send info to nsflp"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 856
    :goto_1
    return-void

    .line 854
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    throw v1
.end method

.method public static blacklist setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .locals 0
    .param p0, "listener"    # Landroid/os/Binder$ProxyTransactListener;

    .line 79
    sput-object p0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 712
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 713
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 714
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 716
    const v2, 0x5f444d50

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return-void

    .line 719
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 734
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 737
    const v2, 0x5f444d50

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    nop

    .line 742
    return-void

    .line 739
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    throw v2
.end method

.method public native blacklist getExtension()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist isBinderAlive()Z
.end method

.method public native whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist pingBinder()Z
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 761
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 763
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 764
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 765
    invoke-static {p5, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V

    .line 766
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 768
    const v3, 0x5f434d44

    :try_start_0
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    nop

    .line 774
    return-void

    .line 771
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    throw v2
.end method

.method public whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v0, p4

    const-string v5, "Unreasonably large binder buffer"

    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 551
    iget-boolean v5, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 553
    .local v5, "warnOnBlocking":Z
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_1

    sget-object v7, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 554
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 558
    iput-boolean v6, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 559
    const/4 v5, 0x0

    .line 561
    sget-boolean v7, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string v8, "Outgoing transactions from this process must be FLAG_ONEWAY"

    const-string v9, "Binder"

    if-eqz v7, :cond_0

    .line 563
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v8, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 567
    :cond_0
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v7

    .line 574
    .local v7, "tracingEnabled":Z
    const/4 v8, 0x0

    .line 575
    .local v8, "tr":Ljava/lang/Throwable;
    const-wide/16 v9, 0x1

    const/4 v11, 0x1

    if-eqz v7, :cond_3

    .line 576
    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    move-object v8, v12

    .line 577
    sget-boolean v12, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-nez v12, :cond_2

    .line 578
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/TransactionTracker;->addTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 580
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    aget-object v12, v12, v11

    .line 581
    .local v12, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 581
    invoke-static {v9, v10, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 586
    .end local v12    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    invoke-direct {v1, v3}, Landroid/os/BinderProxy;->isMsgForGoogleLocation(Landroid/os/Parcel;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p2}, Landroid/os/BinderProxy;->sendInfoToNSFLP(ILandroid/os/Parcel;)V

    .line 590
    :cond_4
    sget-object v12, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 591
    .local v12, "transactListener":Landroid/os/Binder$ProxyTransactListener;
    const/4 v13, 0x0

    .line 593
    .local v13, "session":Ljava/lang/Object;
    if-eqz v12, :cond_5

    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v14

    .line 595
    .local v14, "origWorkSourceUid":I
    invoke-interface {v12, v1, v2, v0}, Landroid/os/Binder$ProxyTransactListener;->onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;

    move-result-object v13

    .line 599
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v15

    .line 600
    .local v15, "updatedWorkSourceUid":I
    if-eq v14, v15, :cond_5

    .line 601
    invoke-virtual {v3, v15}, Landroid/os/Parcel;->replaceCallingWorkSourceUid(I)Z

    .line 606
    .end local v14    # "origWorkSourceUid":I
    .end local v15    # "updatedWorkSourceUid":I
    :cond_5
    invoke-static {}, Landroid/app/AppOpsManager;->pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    move-result-object v14

    .line 608
    .local v14, "prevCollection":Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    and-int/lit8 v15, v0, 0x1

    if-nez v15, :cond_6

    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 609
    or-int/lit8 v0, v0, 0x2

    move v15, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_1

    .line 613
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_6
    move v15, v0

    .end local p4    # "flags":I
    .local v15, "flags":I
    :goto_1
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v0, :cond_14

    sget-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    if-nez v0, :cond_14

    .line 614
    const-wide/16 v16, 0x0

    .line 615
    .local v16, "duration":J
    const-wide/16 v18, 0x0

    .line 616
    .local v18, "time":J
    const/16 v20, 0x0

    .line 618
    .local v20, "issystemserver":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 619
    .local v9, "tempdata":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 621
    .local v10, "tempreply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p4, v0

    .line 622
    .local p4, "intrfcName":Ljava/lang/String;
    move-object/from16 v11, p4

    .end local p4    # "intrfcName":Ljava/lang/String;
    .local v11, "intrfcName":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 623
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 625
    :cond_7
    const/16 v23, 0x0

    .line 627
    .local v23, "extratrstatus":Z
    const v0, 0x5f495359

    :try_start_1
    invoke-virtual {v1, v0, v9, v10, v6}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v23, v0

    .line 630
    goto :goto_2

    .line 628
    :catch_0
    move-exception v0

    .line 631
    :goto_2
    if-eqz v23, :cond_8

    .line 632
    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    move/from16 v20, v0

    .line 634
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 635
    .end local v18    # "time":J
    .local v26, "time":J
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 636
    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 637
    .local v0, "result":Z
    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    .line 638
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 640
    :cond_9
    nop

    .line 642
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 644
    if-eqz v12, :cond_a

    .line 645
    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 647
    :cond_a
    if-eqz v7, :cond_e

    .line 648
    if-nez v8, :cond_b

    .line 649
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    move-object v8, v6

    .line 651
    :cond_b
    if-eqz v20, :cond_d

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    sub-long v18, v18, v16

    .line 653
    .end local v16    # "duration":J
    .local v18, "duration":J
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v6

    and-int/lit8 v16, v15, 0x1

    if-eqz v16, :cond_c

    const/16 v30, 0x1

    goto :goto_3

    :cond_c
    const/16 v30, 0x0

    :goto_3
    move-object/from16 v24, v6

    move-object/from16 v25, v8

    move-wide/from16 v28, v18

    invoke-virtual/range {v24 .. v30}, Landroid/os/TransactionTracker;->addTimeStamp(Ljava/lang/Throwable;JJZ)V

    move-wide/from16 v16, v18

    .line 656
    .end local v18    # "duration":J
    .restart local v16    # "duration":J
    :cond_d
    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    :cond_e
    return v0

    .line 642
    .end local v0    # "result":Z
    .end local v11    # "intrfcName":Ljava/lang/String;
    .end local v23    # "extratrstatus":Z
    :catchall_0
    move-exception v0

    move-wide/from16 v18, v26

    goto :goto_4

    .end local v26    # "time":J
    .local v18, "time":J
    :catchall_1
    move-exception v0

    :goto_4
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 644
    if-eqz v12, :cond_f

    .line 645
    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 647
    :cond_f
    if-eqz v7, :cond_13

    .line 648
    if-nez v8, :cond_10

    .line 649
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    move-object v8, v6

    .line 651
    :cond_10
    if-eqz v20, :cond_12

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v25

    sub-long v16, v25, v16

    .line 653
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v25

    and-int/lit8 v6, v15, 0x1

    if-eqz v6, :cond_11

    const/16 v31, 0x1

    goto :goto_5

    :cond_11
    const/16 v31, 0x0

    :goto_5
    move-object/from16 v26, v8

    move-wide/from16 v27, v18

    move-wide/from16 v29, v16

    invoke-virtual/range {v25 .. v31}, Landroid/os/TransactionTracker;->addTimeStamp(Ljava/lang/Throwable;JJZ)V

    .line 656
    :cond_12
    const-wide/16 v21, 0x1

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    .line 659
    :cond_13
    throw v0

    .line 662
    .end local v9    # "tempdata":Landroid/os/Parcel;
    .end local v10    # "tempreply":Landroid/os/Parcel;
    .end local v16    # "duration":J
    .end local v18    # "time":J
    .end local v20    # "issystemserver":Z
    :cond_14
    :try_start_4
    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 663
    .restart local v0    # "result":Z
    if-eqz v4, :cond_15

    if-nez v5, :cond_15

    .line 664
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 666
    :cond_15
    nop

    .line 668
    invoke-static {v14}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 670
    if-eqz v12, :cond_16

    .line 671
    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 674
    :cond_16
    if-eqz v7, :cond_17

    .line 675
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    :cond_17
    return v0

    .line 668
    .end local v0    # "result":Z
    :catchall_2
    move-exception v0

    invoke-static {v14}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 670
    if-eqz v12, :cond_18

    .line 671
    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 674
    :cond_18
    if-eqz v7, :cond_19

    .line 675
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 677
    :cond_19
    throw v0
.end method

.method public native blacklist transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
