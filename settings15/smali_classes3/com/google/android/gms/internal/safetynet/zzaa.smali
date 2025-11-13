.class public final Lcom/google/android/gms/internal/safetynet/zzaa;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field public final zza:Lcom/google/android/gms/common/api/Status;

.field public final zzb:Lcom/google/android/gms/safetynet/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zza:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zza:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
