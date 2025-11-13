.class public final Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;


# instance fields
.field public final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
