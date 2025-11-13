.class public abstract Landroid/os/HwBinder;
.super Ljava/lang/Object;
.source "HwBinder.java"

# interfaces
.implements Landroid/os/IHwBinder;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HwBinder"

.field private static final greylist-max-o sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 131
    invoke-static {}, Landroid/os/HwBinder;->native_init()J

    move-result-wide v6

    .line 133
    .local v6, "freeFunction":J
    new-instance v8, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/HwBinder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    move-object v0, v8

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v8, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 137
    .end local v6    # "freeFunction":J
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Landroid/os/HwBinder;->native_setup()V

    .line 40
    sget-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwBinder;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method public static final native whitelist configureRpcThreadpool(JZ)V
.end method

.method public static whitelist enableInstrumentation()V
    .locals 0

    .line 152
    invoke-static {}, Landroid/os/HwBinder;->native_report_sysprop_change()V

    .line 153
    return-void
.end method

.method public static final whitelist getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;
    .locals 1
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static final native whitelist joinRpcThreadpool()V
.end method

.method private static final native greylist-max-o native_init()J
.end method

.method private static native greylist-max-o native_report_sysprop_change()V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method public static greylist-max-r reportSyspropChanged()V
    .locals 0

    .line 164
    invoke-static {}, Landroid/os/HwBinder;->native_report_sysprop_change()V

    .line 165
    return-void
.end method

.method public static final native blacklist setTrebleTestingOverride(Z)V
.end method


# virtual methods
.method public abstract whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native whitelist registerService(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native whitelist transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
