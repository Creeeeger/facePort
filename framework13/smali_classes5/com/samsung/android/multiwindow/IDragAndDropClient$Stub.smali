.class public abstract Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;
.super Landroid/os/Binder;
.source "IDragAndDropClient.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IDragAndDropClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IDragAndDropClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInitialDropTargetVisible:I = 0x3

.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.samsung.android.multiwindow.IDragAndDropClient"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "com.samsung.android.multiwindow.IDragAndDropClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IDragAndDropClient;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multiwindow/IDragAndDropClient;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_0
    const-string v0, "getInitialDropTargetVisible"

    return-object v0

    .line 68
    :pswitch_1
    const-string v0, "onDisconnected"

    return-object v0

    .line 64
    :pswitch_2
    const-string v0, "onConnected"

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

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 87
    const-string v0, "com.samsung.android.multiwindow.IDragAndDropClient"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 99
    packed-switch p1, :pswitch_data_1

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->getInitialDropTargetVisible()Z

    move-result v2

    .line 121
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    goto :goto_0

    .line 114
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->onDisconnected()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    goto :goto_0

    .line 104
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 106
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->onConnected(Landroid/os/IBinder;I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 130
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
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
