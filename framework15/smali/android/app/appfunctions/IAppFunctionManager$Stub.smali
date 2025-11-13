.class public abstract Landroid/app/appfunctions/IAppFunctionManager$Stub;
.super Landroid/os/Binder;
.source "IAppFunctionManager.java"

# interfaces
.implements Landroid/app/appfunctions/IAppFunctionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/IAppFunctionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_executeAppFunction:I = 0x1

.field static final blacklist TRANSACTION_setAppFunctionEnabled:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/appfunctions/IAppFunctionManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/appfunctions/IAppFunctionManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setAppFunctionEnabled"

    return-object v0

    :pswitch_1
    const-string v0, "executeAppFunction"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
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

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.app.appfunctions.IAppFunctionManager"

    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v5, 0x5f4e5446

    if-ne v0, v5, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :cond_1
    packed-switch v0, :pswitch_data_0

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/os/UserHandle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v6, p0

    move-object v7, v5

    move-object v8, v12

    move-object v9, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v6 .. v11}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v7, p0

    goto :goto_0

    :pswitch_1
    sget-object v5, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    nop

    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
