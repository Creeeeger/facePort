.class Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEnhancedAttestationPolicyCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub;
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "com.samsung.android.knox.tima.attestation.IEnhancedAttestationPolicyCallback"

    return-object v0
.end method

.method public blacklist onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .locals 5
    .param p1, "result"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.knox.tima.attestation.IEnhancedAttestationPolicyCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 123
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v2
.end method
