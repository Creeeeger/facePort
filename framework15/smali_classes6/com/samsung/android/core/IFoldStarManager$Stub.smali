.class public abstract Lcom/samsung/android/core/IFoldStarManager$Stub;
.super Landroid/os/Binder;
.source "IFoldStarManager.java"

# interfaces
.implements Lcom/samsung/android/core/IFoldStarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/IFoldStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/IFoldStarManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDisplayCompatPackages:I = 0x66

.field static final blacklist TRANSACTION_getFixedAspectRatioPackages:I = 0xca

.field static final blacklist TRANSACTION_initAppContinuityValueWhenReset:I = 0x12f

.field static final blacklist TRANSACTION_registerFoldStarCallback:I = 0x8

.field static final blacklist TRANSACTION_setAllAppContinuityMode:I = 0x12d

.field static final blacklist TRANSACTION_setAppContinuityMode:I = 0x130

.field static final blacklist TRANSACTION_setDisplayCompatPackages:I = 0x65

.field static final blacklist TRANSACTION_setFixedAspectRatioPackages:I = 0xc9

.field static final blacklist TRANSACTION_setFrontScreenOnWhenAppContinuityMode:I = 0x12e

.field static final blacklist TRANSACTION_unregisterFoldStarCallback:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.core.IFoldStarManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/core/IFoldStarManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/IFoldStarManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.core.IFoldStarManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/core/IFoldStarManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/core/IFoldStarManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/core/IFoldStarManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/IFoldStarManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string v0, "setAppContinuityMode"

    return-object v0

    :sswitch_1
    const-string v0, "initAppContinuityValueWhenReset"

    return-object v0

    :sswitch_2
    const-string v0, "setFrontScreenOnWhenAppContinuityMode"

    return-object v0

    :sswitch_3
    const-string v0, "setAllAppContinuityMode"

    return-object v0

    :sswitch_4
    const-string v0, "getFixedAspectRatioPackages"

    return-object v0

    :sswitch_5
    const-string v0, "setFixedAspectRatioPackages"

    return-object v0

    :sswitch_6
    const-string v0, "getDisplayCompatPackages"

    return-object v0

    :sswitch_7
    const-string v0, "setDisplayCompatPackages"

    return-object v0

    :sswitch_8
    const-string v0, "unregisterFoldStarCallback"

    return-object v0

    :sswitch_9
    const-string v0, "registerFoldStarCallback"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x65 -> :sswitch_7
        0x66 -> :sswitch_6
        0xc9 -> :sswitch_5
        0xca -> :sswitch_4
        0x12d -> :sswitch_3
        0x12e -> :sswitch_2
        0x12f -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x12f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/core/IFoldStarManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.core.IFoldStarManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setAppContinuityMode(Ljava/lang/String;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/core/IFoldStarManager$Stub;->initAppContinuityValueWhenReset(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setFrontScreenOnWhenAppContinuityMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setAllAppContinuityMode(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->getFixedAspectRatioPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setFixedAspectRatioPackages(ILjava/util/Map;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->getDisplayCompatPackages(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/core/IFoldStarManager$Stub;->setDisplayCompatPackages(ILjava/util/Map;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/core/IFoldStarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/IFoldStarCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/IFoldStarManager$Stub;->unregisterFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/core/IFoldStarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/IFoldStarCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/IFoldStarManager$Stub;->registerFoldStarCallback(Lcom/samsung/android/core/IFoldStarCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0x65 -> :sswitch_7
        0x66 -> :sswitch_6
        0xc9 -> :sswitch_5
        0xca -> :sswitch_4
        0x12d -> :sswitch_3
        0x12e -> :sswitch_2
        0x12f -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method
