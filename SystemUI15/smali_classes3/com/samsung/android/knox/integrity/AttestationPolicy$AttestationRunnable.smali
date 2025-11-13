.class abstract Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


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
