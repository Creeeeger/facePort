.class Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIAFTCallback.java"

# interfaces
.implements Lcom/sec/android/iaft/callback/IIAFTCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "com.sec.android.iaft.callback.IIAFTCallback"

    return-object v0
.end method

.method public blacklist traceResult(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tid"    # I
    .param p3, "code"    # I
    .param p4, "freq"    # I
    .param p5, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.android.iaft.callback.IIAFTCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v2, p0, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    nop

    .line 138
    return-void

    .line 135
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw v2
.end method
