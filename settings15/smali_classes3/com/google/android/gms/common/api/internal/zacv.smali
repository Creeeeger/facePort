.class public final Lcom/google/android/gms/common/api/internal/zacv;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

.field public final zaa$1:[Lcom/google/android/gms/common/Feature;

.field public final zab:Z

.field public final zac:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:[Lcom/google/android/gms/common/Feature;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    iput p4, p0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    return-void
.end method
