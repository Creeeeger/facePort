.class public final Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAuk:Ljava/lang/String;

.field public mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

.field public mNonce:Ljava/lang/String;

.field public mOnPrem:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    iput-boolean p4, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    return-void
.end method
