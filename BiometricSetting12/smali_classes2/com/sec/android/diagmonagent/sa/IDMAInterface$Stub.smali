.class public abstract Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;
.super Landroid/os/Binder;
.source "IDMAInterface.java"

# interfaces
.implements Lcom/sec/android/diagmonagent/sa/IDMAInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/sa/IDMAInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.diagmonagent.sa.IDMAInterface"

.field static final TRANSACTION_checkToken:I = 0x1

.field static final TRANSACTION_sendCommon:I = 0x2

.field static final TRANSACTION_sendLog:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.diagmonagent.sa.IDMAInterface"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/diagmonagent/sa/IDMAInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.sec.android.diagmonagent.sa.IDMAInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const-string v3, "com.sec.android.diagmonagent.sa.IDMAInterface"

    sparse-switch p1, :sswitch_data_0

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v4, p0

    move v5, v3

    move-object v6, v11

    move-object v7, v12

    move-wide v8, v13

    move-object v10, v15

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->sendLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->sendCommon(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :sswitch_3
    move-object/from16 v7, p0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub;->checkToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
