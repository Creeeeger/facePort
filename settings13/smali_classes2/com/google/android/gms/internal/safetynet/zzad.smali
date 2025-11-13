.class public final Lcom/google/android/gms/internal/safetynet/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResult;


# instance fields
.field private zza:Lcom/google/android/gms/common/api/Status;

.field private zzb:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzad;->zza:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/safetynet/zzad;->zzb:Z

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/safetynet/zzad;->zza:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public final isVerifyAppsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzad;->zza:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/safetynet/zzad;->zzb:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
