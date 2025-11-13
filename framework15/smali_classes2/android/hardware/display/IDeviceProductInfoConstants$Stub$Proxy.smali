.class Landroid/hardware/display/IDeviceProductInfoConstants$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceProductInfoConstants.java"

# interfaces
.implements Landroid/hardware/display/IDeviceProductInfoConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDeviceProductInfoConstants$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/IDeviceProductInfoConstants$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/IDeviceProductInfoConstants$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.display.IDeviceProductInfoConstants"

    return-object v0
.end method
