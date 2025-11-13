.class public abstract Lcom/samsung/android/knox/zt/config/ITrustFactorService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/zt/config/ITrustFactorService;


# static fields
.field public static final TRANSACTION_getTrustScore:I = 0x6

.field public static final TRANSACTION_getType:I = 0x5

.field public static final TRANSACTION_init:I = 0x1

.field public static final TRANSACTION_isStarted:I = 0x4

.field public static final TRANSACTION_start:I = 0x2

.field public static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.zt.config.ITrustFactorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/ITrustFactorService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.zt.config.ITrustFactorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/zt/config/ITrustFactorService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/zt/config/ITrustFactorService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/zt/config/ITrustFactorService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/config/ITrustFactorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.zt.config.ITrustFactorService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustFactorService;->getTrustScore()J

    move-result-wide p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustFactorService;->getType()Lcom/samsung/android/knox/zt/config/TrustFactorType;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lcom/samsung/android/knox/zt/config/ITrustFactorService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustFactorService;->isStarted()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustFactorService;->stop()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/zt/config/ITrustFactorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/ITrustFactorListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/config/ITrustFactorService;->start(Ljava/util/Map;Lcom/samsung/android/knox/zt/config/ITrustFactorListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/config/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IResultListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/ITrustFactorService;->init(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
