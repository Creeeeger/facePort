.class public abstract Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService"

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerServiceCallback"

    const/4 v4, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_3

    instance-of p4, p2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;

    if-eqz p4, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback$Stub$Proxy;

    invoke-direct {v4, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p0, v4}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;->unregisterSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_6

    instance-of p4, p2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;

    if-eqz p4, :cond_6

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;

    goto :goto_1

    :cond_6
    new-instance v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback$Stub$Proxy;

    invoke-direct {v4, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {p0, v4}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;->registerSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerServiceCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;->GetCurrentVoiceCall()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;->isDefaultDataSlotAllowed(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;->isDualSimReadyAndTurnedOn()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
