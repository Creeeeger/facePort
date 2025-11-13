.class final Lcom/google/android/gms/safetynet/zzo;
.super Lcom/google/android/gms/internal/safetynet/zzd;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/safetynet/zzo;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/safetynet/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/safetynet/zzad;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    .line 2
    new-instance p2, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    invoke-direct {p2}, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;-><init>()V

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/Response;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-object p0, p0, Lcom/google/android/gms/safetynet/zzo;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
