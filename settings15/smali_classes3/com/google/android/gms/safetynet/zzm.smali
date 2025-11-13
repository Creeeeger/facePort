.class public final synthetic Lcom/google/android/gms/safetynet/zzm;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/safetynet/SafetyNetClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p0, Lcom/google/android/gms/safetynet/zzo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/safetynet/zzo;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v0, Lcom/google/android/gms/internal/safetynet/zzc;->$r8$clinit:I

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p0, 0xe

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/safetynet/zzh;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
