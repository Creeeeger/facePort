.class public final Lcom/android/keyguard/SecFpMsg;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public arg:I

.field public msgString:Ljava/lang/CharSequence;

.field public result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field public sequence:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;
    .locals 1

    new-instance v0, Lcom/android/keyguard/SecFpMsg;

    invoke-direct {v0}, Lcom/android/keyguard/SecFpMsg;-><init>()V

    iput p0, v0, Lcom/android/keyguard/SecFpMsg;->type:I

    iput p1, v0, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iput p2, v0, Lcom/android/keyguard/SecFpMsg;->arg:I

    iput-object p3, v0, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    iput-object p4, v0, Lcom/android/keyguard/SecFpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object v0
.end method
