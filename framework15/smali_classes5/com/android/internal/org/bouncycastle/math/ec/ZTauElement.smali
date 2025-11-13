.class Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
.super Ljava/lang/Object;
.source "ZTauElement.java"


# instance fields
.field public final blacklist u:Ljava/math/BigInteger;

.field public final blacklist v:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    return-void
.end method
