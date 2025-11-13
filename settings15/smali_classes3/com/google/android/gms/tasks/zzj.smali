.class public final Lcom/google/android/gms/tasks/zzj;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final zza:Ljava/util/concurrent/Executor;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Lcom/google/android/gms/tasks/OnCompleteListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzj;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzj;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzj;->zzc:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-void
.end method
