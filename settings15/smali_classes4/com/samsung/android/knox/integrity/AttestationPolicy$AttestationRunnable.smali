.class abstract Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/AttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttestationRunnable"
.end annotation


# instance fields
.field public callingUid:I

.field public nonce:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->nonce:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    return-void
.end method
