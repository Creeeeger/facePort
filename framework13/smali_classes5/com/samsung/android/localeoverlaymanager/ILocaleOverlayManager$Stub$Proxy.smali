.class Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILocaleOverlayManager.java"

# interfaces
.implements Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;)Z
    .locals 5
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .param p2, "userId"    # I
    .param p3, "observer"    # Lcom/samsung/android/localeoverlaymanager/IOverlayChangeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 166
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 167
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 171
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    nop

    .line 174
    return v2

    .line 171
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v2
.end method

.method public blacklist applyLocalesForPackage(Ljava/lang/String;ILcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "observer"    # Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayInstallObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 187
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 191
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    nop

    .line 194
    return v2

    .line 191
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 148
    const-string v0, "com.samsung.android.localeoverlaymanager.ILocaleOverlayManager"

    return-object v0
.end method
