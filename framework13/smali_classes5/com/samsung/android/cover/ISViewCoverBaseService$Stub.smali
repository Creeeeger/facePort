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

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cover/ISViewCoverBaseService;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static greylist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "onCoverAppCovered"

    return-object v0

    .line 86
    :pswitch_1
    const-string v0, "isCoverViewShowing"

    return-object v0

    .line 82
    :pswitch_2
    const-string/jumbo v0, "updateCoverState"

    return-object v0

    .line 78
    :pswitch_3
    const-string v0, "onSViewCoverHide"

    return-object v0

    .line 74
    :pswitch_4
    const-string v0, "onSViewCoverShow"

    return-object v0

    .line 70
    :pswitch_5
    const-string v0, "onSystemReady"

    return-object v0

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

    .line 61
    return-object p0
.end method

.method public greylist getMaxTransactionId()I
    .locals 1

    .line 271
    const/4 v0, 0x5

    return v0
.end method

.method public greylist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "com.samsung.android.cover.ISViewCoverBaseService"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 117
    packed-switch p1, :pswitch_data_1

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 152
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 153
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onCoverAppCovered(Z)I

    move-result v3

    .line 155
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->isCoverViewShowing()Z

    move-result v2

    .line 145
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 147
    goto :goto_0

    .line 137
    .end local v2    # "_result":Z
    :pswitch_3
    sget-object v2, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverState;

    .line 138
    .local v2, "_arg0":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 140
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":Lcom/samsung/android/cover/CoverState;
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverHide()V

    .line 132
    goto :goto_0

    .line 126
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverShow()V

    .line 127
    goto :goto_0

    .line 121
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSystemReady()V

    .line 122
    nop

    .line 164
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
