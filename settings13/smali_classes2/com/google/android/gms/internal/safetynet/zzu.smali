.class final Lcom/google/android/gms/internal/safetynet/zzu;
.super Lcom/google/android/gms/internal/safetynet/zzd;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/safetynet/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/safetynet/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzu;->zza:Lcom/google/android/gms/internal/safetynet/zzv;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/safetynet/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/safetynet/zzu;->zza:Lcom/google/android/gms/internal/safetynet/zzv;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzaa;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/safetynet/zzaa;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
