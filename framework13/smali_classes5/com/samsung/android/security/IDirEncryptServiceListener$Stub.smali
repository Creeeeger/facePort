.class public abstract Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptServiceListener.java"

# interfaces
.implements Lcom/samsung/android/security/IDirEncryptServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/IDirEncryptServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/IDirEncryptServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "IDirEncryptServiceListener"

.field static final blacklist TRANSACTION_onEncryptionStatusChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "IDirEncryptServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptServiceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "IDirEncryptServiceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/security/IDirEncryptServiceListener;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/security/IDirEncryptServiceListener;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x1

    const-string v1, "IDirEncryptServiceListener"

    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 62
    :sswitch_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v0

    .line 66
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
