.class public abstract Lcom/samsung/android/knox/mpos/IMPOSService$Stub;
.super Landroid/os/Binder;
.source "IMPOSService.java"

# interfaces
.implements Lcom/samsung/android/knox/mpos/IMPOSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mpos/IMPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/mpos/IMPOSService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_loadTa:I = 0x1

.field static final blacklist TRANSACTION_processTACommand:I = 0x3

.field static final blacklist TRANSACTION_unloadTa:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.knox.mpos.IMPOSService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/mpos/IMPOSService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "com.samsung.android.knox.mpos.IMPOSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/mpos/IMPOSService;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/mpos/IMPOSService;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/mpos/IMPOSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "processTACommand"

    return-object v0

    .line 69
    :pswitch_1
    const-string/jumbo v0, "unloadTa"

    return-object v0

    .line 65
    :pswitch_2
    const-string v0, "loadTa"

    return-object v0

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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 230
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.knox.mpos.IMPOSService"

    .line 89
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 90
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 100
    packed-switch v9, :pswitch_data_1

    .line 144
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 96
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v13

    .line 133
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    sget-object v1, Lcom/samsung/android/knox/mpos/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/mpos/TACommandRequest;

    .line 136
    .local v1, "_arg1":Lcom/samsung/android/knox/mpos/TACommandRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;->processTACommand(ILcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;

    move-result-object v2

    .line 138
    .local v2, "_result":Lcom/samsung/android/knox/mpos/TACommandResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    goto :goto_0

    .line 123
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/samsung/android/knox/mpos/TACommandRequest;
    .end local v2    # "_result":Lcom/samsung/android/knox/mpos/TACommandResponse;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;->unloadTa(I)Z

    move-result v1

    .line 126
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    goto :goto_0

    .line 105
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 107
    .local v14, "_arg0":I
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/ParcelFileDescriptor;

    .line 109
    .local v15, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 111
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 113
    .local v18, "_arg3":J
    sget-object v0, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/samsung/android/knox/mpos/MposTZServiceConfig;

    .line 114
    .local v20, "_arg4":Lcom/samsung/android/knox/mpos/MposTZServiceConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/mpos/IMPOSService$Stub;->loadTa(ILandroid/os/ParcelFileDescriptor;JJLcom/samsung/android/knox/mpos/MposTZServiceConfig;)Z

    move-result v0

    .line 116
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    nop

    .line 147
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":Lcom/samsung/android/knox/mpos/MposTZServiceConfig;
    :goto_0
    return v13

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
