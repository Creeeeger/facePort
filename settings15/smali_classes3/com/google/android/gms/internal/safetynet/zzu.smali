.class public final Lcom/google/android/gms/internal/safetynet/zzu;
.super Lcom/google/android/gms/internal/safetynet/zzd;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/safetynet/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/safetynet/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzu;->zza:Lcom/google/android/gms/internal/safetynet/zzn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/safetynet/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/safetynet/zzu;->zza:Lcom/google/android/gms/internal/safetynet/zzn;

    new-instance v0, Lcom/google/android/gms/internal/safetynet/zzaa;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/safetynet/zzaa;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
