.class Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAuthenticated:Z

.field public final mIsStrongBiometric:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    return-void
.end method
