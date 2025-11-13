.class public abstract Lcom/google/android/gms/internal/base/zaa;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final zaa:Landroid/os/IBinder;

.field public final zab:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/base/zaa;->zaa:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/base/zaa;->zaa:Landroid/os/IBinder;

    return-object p0
.end method
