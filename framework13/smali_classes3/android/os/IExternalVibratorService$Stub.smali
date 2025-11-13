.class public abstract Landroid/os/IExternalVibratorService$Stub;
.super Landroid/os/Binder;
.source "IExternalVibratorService.java"

# interfaces
.implements Landroid/os/IExternalVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IExternalVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onExternalVibrationStart:I = 0x1

.field static final blacklist TRANSACTION_onExternalVibrationStop:I = 0x2

.field static final blacklist TRANSACTION_shouldIgnoreExternalVibrationLocked:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.os.IExternalVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IExternalVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibratorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "android.os.IExternalVibratorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IExternalVibratorService;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/os/IExternalVibratorService;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/os/IExternalVibratorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IExternalVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    const-string/jumbo v0, "shouldIgnoreExternalVibrationLocked"

    return-object v0

    .line 103
    :pswitch_1
    const-string/jumbo v0, "onExternalVibrationStop"

    return-object v0

    .line 99
    :pswitch_2
    const-string/jumbo v0, "onExternalVibrationStart"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 280
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/os/IExternalVibratorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "android.os.IExternalVibratorService"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 134
    packed-switch p1, :pswitch_data_1

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 158
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IExternalVibratorService$Stub;->shouldIgnoreExternalVibrationLocked(IIII)Z

    move-result v6

    .line 167
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 169
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_2
    sget-object v2, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    .line 150
    .local v2, "_arg0":Landroid/os/ExternalVibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/os/IExternalVibratorService$Stub;->onExternalVibrationStop(Landroid/os/ExternalVibration;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Landroid/os/ExternalVibration;
    :pswitch_3
    sget-object v2, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    .line 140
    .restart local v2    # "_arg0":Landroid/os/ExternalVibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/os/IExternalVibratorService$Stub;->onExternalVibrationStart(Landroid/os/ExternalVibration;)I

    move-result v3

    .line 142
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    nop

    .line 176
    .end local v2    # "_arg0":Landroid/os/ExternalVibration;
    .end local v3    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
