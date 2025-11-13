.class public abstract Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;
.super Landroid/os/Binder;
.source "ISViewCoverBaseService.java"

# interfaces
.implements Lcom/samsung/android/cover/ISViewCoverBaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ISViewCoverBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final greylist TRANSACTION_isCoverViewShowing:I = 0x5

.field static final greylist TRANSACTION_onCoverAppCovered:I = 0x6

.field static final greylist TRANSACTION_onSViewCoverHide:I = 0x3

.field static final greylist TRANSACTION_onSViewCoverShow:I = 0x2

.field static final greylist TRANSACTION_onSystemReady:I = 0x1

.field static final greylist TRANSACTION_updateCoverState:I = 0x4


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cover/ISViewCoverBaseService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "onCoverAppCovered"

    return-object v0

    :pswitch_1
    const-string v0, "isCoverViewShowing"

    return-object v0

    :pswitch_2
    const-string v0, "updateCoverState"

    return-object v0

    :pswitch_3
    const-string v0, "onSViewCoverHide"

    return-object v0

    :pswitch_4
    const-string v0, "onSViewCoverShow"

    return-object v0

    :pswitch_5
    const-string v0, "onSystemReady"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

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
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onCoverAppCovered(Z)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->isCoverViewShowing()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverHide()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverShow()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSystemReady()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
