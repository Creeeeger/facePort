.class public abstract Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub;
.super Landroid/os/Binder;
.source "IIwhTrService.java"

# interfaces
.implements Lcom/samsung/android/wifi/ai/iwh/IIwhTrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ai/iwh/IIwhTrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_initialize:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.wifi.ai.iwh.IIwhTrService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ai/iwh/IIwhTrService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.wifi.ai.iwh.IIwhTrService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "initialize"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    const-string v1, "com.samsung.android.wifi.ai.iwh.IIwhTrService"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1

    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v5, p0

    move-object v6, v11

    move v7, v12

    move v8, v13

    move v9, v14

    move v10, v15

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub;->initialize(Ljava/lang/String;IIIZ)V

    nop

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
