.class public final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "BinderProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderProxy$ProxyMap;,
        Landroid/os/BinderProxy$InterfaceCount;,
        Landroid/os/BinderProxy$NoImagePreloadHolder;,
        Landroid/os/BinderProxy$BinderProxyMapSizeException;
    }
.end annotation


# static fields
.field private static final blacklist GMS_SHORT_LOOKUP:Ljava/lang/String; = "gms.loc"

.field private static final blacklist NATIVE_ALLOCATION_SIZE:I = 0x3e8

.field private static final blacklist sProxyMap:Landroid/os/BinderProxy$ProxyMap;

.field private static volatile blacklist sTransactListener:Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field private blacklist mDeathRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

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

    const/4 v0, 0x0

    sput-object v0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    new-instance v1, Landroid/os/BinderProxy$ProxyMap;

    invoke-direct {v1, v0}, Landroid/os/BinderProxy$ProxyMap;-><init>(Landroid/os/BinderProxy$ProxyMap-IA;)V

    sput-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    iput-wide p1, p0, Landroid/os/BinderProxy;->mNativeData:J

    return-void
.end method

.method private blacklist customContains(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x13

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "gms.loc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist dumpProxyDebugInfo()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V

    :cond_0
    return-void
.end method

.method private static blacklist getInstance(JJ)Landroid/os/BinderProxy;
    .locals 4

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v1, p2, p3}, Landroid/os/BinderProxy$ProxyMap;->get(J)Landroid/os/BinderProxy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :cond_0
    :try_start_2
    new-instance v2, Landroid/os/BinderProxy;

    invoke-direct {v2, p0, p1}, Landroid/os/BinderProxy;-><init>(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    nop

    :try_start_3
    sget-object v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, v1, p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    sget-object v2, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v2, p2, p3, v1}, Landroid/os/BinderProxy$ProxyMap;->set(JLandroid/os/BinderProxy;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    sget-wide v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    invoke-static {v2, v3, p0, p1}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    nop

    throw v1

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

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v1}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .locals 1

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0, p0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isMsgForGoogleLocation(Landroid/os/Parcel;)Z
    .locals 4

    iget v0, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    iput v2, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BinderProxy;->customContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Landroid/os/BinderProxy;->msgForGoogleLocation:I

    return v2

    :cond_2
    return v1
.end method

.method private native blacklist linkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method private static blacklist sendDeathNotice(Landroid/os/IBinder$DeathRecipient;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BinderNative"

    const-string v2, "Uncaught exception from death notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist sendInfoToNSFLP(ILandroid/os/Parcel;)V
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v2, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelableParcel;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "pp"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v4, "interfaceName"

    invoke-virtual {p2}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xc8

    iput v5, v4, Landroid/os/Message;->what:I

    iput p1, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-interface {v1, v4}, Landroid/location/ILocationManager;->notifyNSFLP(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Binder_FLP"

    const-string v3, "failed to send info to nsflp"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static blacklist setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .locals 0

    sput-object p0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    return-void
.end method

.method private native blacklist unlinkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)Z
.end method


# virtual methods
.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const v2, 0x5f444d50

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const v2, 0x5f444d50

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

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

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->linkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public native whitelist pingBinder()Z
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p5, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    const v3, 0x5f434d44

    :try_start_0
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v0, p4

    const-string v5, "Unreasonably large binder buffer"

    invoke-static {v1, v2, v3, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    iget-boolean v5, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_2

    sget-object v7, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    iput-boolean v6, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    const/4 v5, 0x0

    sget-boolean v7, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string v8, "Outgoing transactions from this process must be FLAG_ONEWAY"

    const-string v9, "Binder"

    if-nez v7, :cond_1

    sget-boolean v7, Landroid/os/Build;->IS_ENG:Z

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v8, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x1

    const/4 v11, 0x1

    if-eqz v7, :cond_4

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    move-object v8, v12

    sget-boolean v12, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-nez v12, :cond_3

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/TransactionTracker;->addTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    aget-object v12, v12, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-static {v9, v10, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_4
    invoke-direct {v1, v3}, Landroid/os/BinderProxy;->isMsgForGoogleLocation(Landroid/os/Parcel;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct/range {p0 .. p2}, Landroid/os/BinderProxy;->sendInfoToNSFLP(ILandroid/os/Parcel;)V

    :cond_5
    sget-object v12, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    const/4 v13, 0x0

    if-eqz v12, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v14

    invoke-interface {v12, v1, v2, v0}, Landroid/os/Binder$ProxyTransactListener;->onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v15

    if-eq v14, v15, :cond_6

    invoke-virtual {v3, v15}, Landroid/os/Parcel;->replaceCallingWorkSourceUid(I)Z

    :cond_6
    invoke-static {}, Landroid/app/AppOpsManager;->pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    move-result-object v14

    and-int/lit8 v15, v0, 0x1

    if-nez v15, :cond_7

    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v15

    if-eqz v15, :cond_7

    or-int/lit8 v0, v0, 0x2

    move v15, v0

    goto :goto_2

    :cond_7
    move v15, v0

    :goto_2
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Landroid/os/Binder;->isSystemServer:Z

    if-nez v0, :cond_15

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p4, v0

    move-object/from16 v11, p4

    if-eqz v11, :cond_8

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_8
    const/16 v23, 0x0

    const v0, 0x5f495359

    :try_start_1
    invoke-virtual {v1, v0, v9, v10, v6}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v23, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    if-eqz v23, :cond_9

    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    move/from16 v20, v0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    move-wide/from16 v16, v18

    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v4, :cond_a

    if-nez v5, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    nop

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    if-eqz v12, :cond_b

    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    :cond_b
    if-eqz v7, :cond_f

    if-nez v8, :cond_c

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    move-object v8, v6

    :cond_c
    if-eqz v20, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    sub-long v18, v18, v16

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v6

    and-int/lit8 v16, v15, 0x1

    if-eqz v16, :cond_d

    const/16 v30, 0x1

    goto :goto_4

    :cond_d
    const/16 v30, 0x0

    :goto_4
    move-object/from16 v24, v6

    move-object/from16 v25, v8

    move-wide/from16 v28, v18

    invoke-virtual/range {v24 .. v30}, Landroid/os/TransactionTracker;->addTimeStamp(Ljava/lang/Throwable;JJZ)V

    move-wide/from16 v16, v18

    :cond_e
    const-wide/16 v18, 0x1

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    :cond_f
    return v0

    :catchall_0
    move-exception v0

    move-wide/from16 v18, v26

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    if-eqz v12, :cond_10

    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    :cond_10
    if-eqz v7, :cond_14

    if-nez v8, :cond_11

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    move-object v8, v6

    :cond_11
    if-eqz v20, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v25

    sub-long v16, v25, v16

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v25

    and-int/lit8 v6, v15, 0x1

    if-eqz v6, :cond_12

    const/16 v31, 0x1

    goto :goto_6

    :cond_12
    const/16 v31, 0x0

    :goto_6
    move-object/from16 v26, v8

    move-wide/from16 v27, v18

    move-wide/from16 v29, v16

    invoke-virtual/range {v25 .. v31}, Landroid/os/TransactionTracker;->addTimeStamp(Ljava/lang/Throwable;JJZ)V

    :cond_13
    const-wide/16 v21, 0x1

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    :cond_14
    throw v0

    :cond_15
    :try_start_4
    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v4, :cond_16

    if-nez v5, :cond_16

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_16
    nop

    invoke-static {v14}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    if-eqz v12, :cond_17

    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    :cond_17
    if-eqz v7, :cond_18

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    :cond_18
    return v0

    :catchall_2
    move-exception v0

    invoke-static {v14}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    if-eqz v12, :cond_19

    invoke-interface {v12, v13}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    :cond_19
    if-eqz v7, :cond_1a

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1a
    throw v0
.end method

.method public native blacklist transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    iget-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->unlinkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method
