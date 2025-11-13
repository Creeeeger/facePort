.class public final Lcom/google/android/gms/common/internal/zad;
.super Lcom/google/android/gms/common/internal/zag;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic zaa:Landroid/content/Intent;

.field public final synthetic zab:Landroid/app/Activity;

.field public final synthetic zac:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zad;->zaa:Landroid/content/Intent;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zad;->zab:Landroid/app/Activity;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zad;->zac:I

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zad;->zaa:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zad;->zab:Landroid/app/Activity;

    iget p0, p0, Lcom/google/android/gms/common/internal/zad;->zac:I

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
