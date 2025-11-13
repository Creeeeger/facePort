.class public abstract Landroid/media/tv/ad/ITvAdSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvAdSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x2

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0x4

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x6

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0x3

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x7

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x5

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onTvAdSessionData:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.tv.ad.ITvAdSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSessionCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.tv.ad.ITvAdSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdSessionCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdSessionCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/tv/ad/ITvAdSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "onTvAdSessionData"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "onRequestSigning"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "onRequestCurrentTvInputId"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "onRequestTrackInfoList"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "onRequestCurrentChannelUri"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "onRequestCurrentVideoBounds"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "onLayoutSurface"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
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

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.tv.ad.ITvAdSessionCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestCurrentTvInputId()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestTrackInfoList()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestCurrentChannelUri()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onRequestCurrentVideoBounds()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onLayoutSurface(IIII)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ad/ITvAdSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
