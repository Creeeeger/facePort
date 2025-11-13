.class public abstract Landroid/hardware/ICameraServiceListener$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceListener.java"

# interfaces
.implements Landroid/hardware/ICameraServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraServiceListener"

.field static final blacklist TRANSACTION_onCameraAccessPrioritiesChanged:I = 0x5

.field static final blacklist TRANSACTION_onCameraClosed:I = 0x7

.field static final blacklist TRANSACTION_onCameraDeviceStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onCameraOpened:I = 0x6

.field static final blacklist TRANSACTION_onPhysicalCameraStatusChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onStatusChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onTorchStatusChanged:I = 0x3

.field static final blacklist TRANSACTION_onTorchStrengthLevelChanged:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.hardware.ICameraServiceListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const-string v0, "android.hardware.ICameraServiceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraServiceListener;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraServiceListener;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Landroid/hardware/ICameraServiceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_0
    const-string/jumbo v0, "onCameraDeviceStateChanged"

    return-object v0

    .line 114
    :pswitch_1
    const-string/jumbo v0, "onCameraClosed"

    return-object v0

    .line 110
    :pswitch_2
    const-string/jumbo v0, "onCameraOpened"

    return-object v0

    .line 106
    :pswitch_3
    const-string/jumbo v0, "onCameraAccessPrioritiesChanged"

    return-object v0

    .line 102
    :pswitch_4
    const-string/jumbo v0, "onTorchStrengthLevelChanged"

    return-object v0

    .line 98
    :pswitch_5
    const-string/jumbo v0, "onTorchStatusChanged"

    return-object v0

    .line 94
    :pswitch_6
    const-string/jumbo v0, "onPhysicalCameraStatusChanged"

    return-object v0

    .line 90
    :pswitch_7
    const-string/jumbo v0, "onStatusChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
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

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 384
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 129
    invoke-static {p1}, Landroid/hardware/ICameraServiceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "android.hardware.ICameraServiceListener"

    .line 134
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 135
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    move-object/from16 v10, p2

    .line 137
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 145
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 230
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 141
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v9

    .line 215
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 219
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 221
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 224
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V

    .line 226
    goto :goto_1

    .line 207
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v6, v0}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraClosed(Ljava/lang/String;)V

    .line 210
    goto :goto_1

    .line 197
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v6, v0, v1}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    goto :goto_1

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraServiceListener$Stub;->onCameraAccessPrioritiesChanged()V

    .line 192
    goto :goto_1

    .line 182
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {v6, v0, v1}, Landroid/hardware/ICameraServiceListener$Stub;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    .line 187
    goto :goto_1

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {v6, v0, v1}, Landroid/hardware/ICameraServiceListener$Stub;->onTorchStatusChanged(ILjava/lang/String;)V

    .line 177
    goto :goto_1

    .line 160
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/ICameraServiceListener$Stub;->onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    goto :goto_1

    .line 150
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {v6, v0, v1}, Landroid/hardware/ICameraServiceListener$Stub;->onStatusChanged(ILjava/lang/String;)V

    .line 155
    nop

    .line 233
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_1
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
