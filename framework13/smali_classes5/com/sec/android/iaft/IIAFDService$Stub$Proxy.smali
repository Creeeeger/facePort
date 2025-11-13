.class Lcom/sec/android/iaft/IIAFDService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIAFDService.java"

# interfaces
.implements Lcom/sec/android/iaft/IIAFDService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IIAFDService$Stub;
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/sec/android/iaft/IIAFDService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 145
    return-void
.end method


# virtual methods
.method public blacklist IAFDParse(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.android.iaft.IIAFDService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/iaft/IIAFDService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 175
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 179
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    nop

    .line 182
    return v2

    .line 179
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v2
.end method

.method public blacklist IAFDShow(IILjava/lang/String;)V
    .locals 5
    .param p1, "puserId"    # I
    .param p2, "appuid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.android.iaft.IIAFDService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/iaft/IIAFDService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    nop

    .line 200
    return-void

    .line 197
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sec/android/iaft/IIAFDService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "com.sec.android.iaft.IIAFDService"

    return-object v0
.end method
