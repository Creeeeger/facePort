.class public abstract Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;
.super Landroid/os/Binder;
.source "IAuthFactorTouchService.java"

# interfaces
.implements Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onPointerEvent:I = 0x6

.field static final blacklist TRANSACTION_registerAuthTouchEnableListener:I = 0x1

.field static final blacklist TRANSACTION_registerAuthTouchEventListener:I = 0x3

.field static final blacklist TRANSACTION_setTouchEvent:I = 0x5

.field static final blacklist TRANSACTION_unregisterAuthTouchEnableListener:I = 0x2

.field static final blacklist TRANSACTION_unregisterAuthTouchEventListener:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.samsung.cmfa.AuthTouch.IAuthFactorTouchService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "com.samsung.cmfa.AuthTouch.IAuthFactorTouchService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_0
    const-string v0, "onPointerEvent"

    return-object v0

    .line 83
    :pswitch_1
    const-string/jumbo v0, "setTouchEvent"

    return-object v0

    .line 79
    :pswitch_2
    const-string/jumbo v0, "unregisterAuthTouchEventListener"

    return-object v0

    .line 75
    :pswitch_3
    const-string/jumbo v0, "registerAuthTouchEventListener"

    return-object v0

    .line 71
    :pswitch_4
    const-string/jumbo v0, "unregisterAuthTouchEnableListener"

    return-object v0

    .line 67
    :pswitch_5
    const-string/jumbo v0, "registerAuthTouchEnableListener"

    return-object v0

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 295
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const-string v0, "com.samsung.cmfa.AuthTouch.IAuthFactorTouchService"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 114
    packed-switch p1, :pswitch_data_1

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 166
    :pswitch_1
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 167
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 157
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 158
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->setTouchEvent(ZZ)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;

    move-result-object v2

    .line 147
    .local v2, "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->unregisterAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_0

    .line 137
    .end local v2    # "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->registerAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->unregisterAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_0

    .line 119
    .end local v2    # "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    move-result-object v2

    .line 120
    .restart local v2    # "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;->registerAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    nop

    .line 177
    .end local v2    # "_arg0":Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
