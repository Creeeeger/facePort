.class public final Lcom/google/android/gms/internal/safetynet/zzn;
.super Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/safetynet/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabv;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    const-string v1, "GoogleApiClient must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/internal/zabv;)V

    const-string p1, "Api must not be null"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/safetynet/zzu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/safetynet/zzu;-><init>(Lcom/google/android/gms/internal/safetynet/zzn;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzn;->zza:Lcom/google/android/gms/internal/safetynet/zzu;

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/safetynet/zzaa;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/safetynet/zzaa;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/safetynet/zzaa;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    return-object p0
.end method

.method public final doExecute(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/internal/safetynet/zzc;->$r8$clinit:I

    iget-object p0, p0, Lcom/google/android/gms/internal/safetynet/zzn;->zza:Lcom/google/android/gms/internal/safetynet/zzu;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    const/4 p0, 0x5

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/safetynet/zzh;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
