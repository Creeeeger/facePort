.class public final Lcom/android/keyguard/SecFaceMsg;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public arg:I

.field public msgString:Ljava/lang/CharSequence;

.field public result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;
    .locals 1

    new-instance v0, Lcom/android/keyguard/SecFaceMsg;

    invoke-direct {v0}, Lcom/android/keyguard/SecFaceMsg;-><init>()V

    iput p0, v0, Lcom/android/keyguard/SecFaceMsg;->type:I

    iput p1, v0, Lcom/android/keyguard/SecFaceMsg;->arg:I

    iput-object p2, v0, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/android/keyguard/SecFaceMsg;->result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    return-object v0
.end method
