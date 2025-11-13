.class public final Lcom/google/android/gms/safetynet/zzo;
.super Lcom/google/android/gms/internal/safetynet/zzd;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/safetynet/zzo;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/safetynet/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzad;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/safetynet/zzad;->zza:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, v0, Lcom/google/android/gms/internal/safetynet/zzad;->zzb:Z

    new-instance p2, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lcom/google/android/gms/common/api/Response;->zza:Lcom/google/android/gms/common/api/Result;

    iget-object p0, p0, Lcom/google/android/gms/safetynet/zzo;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->zzc:I

    if-gtz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Lcom/google/android/gms/common/api/Response;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Lcom/google/android/gms/common/api/ApiException;)V

    :goto_0
    return-void
.end method
