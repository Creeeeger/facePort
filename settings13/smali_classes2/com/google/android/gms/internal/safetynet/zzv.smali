.class abstract Lcom/google/android/gms/internal/safetynet/zzv;
.super Lcom/google/android/gms/internal/safetynet/zze;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/safetynet/zze<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/safetynet/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/safetynet/zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/internal/safetynet/zzu;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/safetynet/zzu;-><init>(Lcom/google/android/gms/internal/safetynet/zzv;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzv;->zza:Lcom/google/android/gms/internal/safetynet/zzg;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/safetynet/zzaa;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/safetynet/zzaa;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    return-object p0
.end method
