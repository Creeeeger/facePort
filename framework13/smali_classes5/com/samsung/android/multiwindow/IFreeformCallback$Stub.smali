.class public abstract Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;
.super Landroid/os/Binder;
.source "IFreeformCallback.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IFreeformCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IFreeformCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IFreeformCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMinimizeAnimationEnd:I = 0x3

.field static final blacklist TRANSACTION_onMinimized:I = 0x1

.field static final blacklist TRANSACTION_onTaskMoveEnded:I = 0x5

.field static final blacklist TRANSACTION_onTaskMoveStarted:I = 0x4

.field static final blacklist TRANSACTION_onUnminimized:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.samsung.android.multiwindow.IFreeformCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IFreeformCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "com.samsung.android.multiwindow.IFreeformCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IFreeformCallback;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multiwindow/IFreeformCallback;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_0
    const-string v0, "onTaskMoveEnded"

    return-object v0

    .line 81
    :pswitch_1
    const-string v0, "onTaskMoveStarted"

    return-object v0

    .line 77
    :pswitch_2
    const-string v0, "onMinimizeAnimationEnd"

    return-object v0

    .line 73
    :pswitch_3
    const-string v0, "onUnminimized"

    return-object v0

    .line 69
    :pswitch_4
    const-string v0, "onMinimized"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 263
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.samsung.android.multiwindow.IFreeformCallback"

    .line 101
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 102
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 112
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 168
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 108
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v10

    .line 159
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 162
    .local v1, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V

    .line 164
    goto :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IRemoteCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 152
    .local v1, "_arg1":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->onTaskMoveStarted(ILandroid/graphics/Point;)V

    .line 154
    goto :goto_0

    .line 141
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {v6, v0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->onMinimizeAnimationEnd(I)V

    .line 144
    goto :goto_0

    .line 133
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {v6, v0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->onUnminimized(I)V

    .line 136
    goto :goto_0

    .line 117
    .end local v0    # "_arg0":I
    :pswitch_5
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/ComponentName;

    .line 119
    .local v12, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 121
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 123
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 125
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 126
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;->onMinimized(Landroid/content/ComponentName;IIII)V

    .line 128
    nop

    .line 171
    .end local v12    # "_arg0":Landroid/content/ComponentName;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
