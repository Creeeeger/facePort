.class public final synthetic Lcom/google/android/gms/safetynet/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/safetynet/SafetyNetClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/safetynet/zzm;->zza:Lcom/google/android/gms/safetynet/SafetyNetClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/safetynet/zzm;->zza:Lcom/google/android/gms/safetynet/SafetyNetClient;

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/safetynet/zzo;

    .line 1
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/safetynet/zzo;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/safetynet/zzh;->zzf(Lcom/google/android/gms/internal/safetynet/zzg;)V

    return-void
.end method
