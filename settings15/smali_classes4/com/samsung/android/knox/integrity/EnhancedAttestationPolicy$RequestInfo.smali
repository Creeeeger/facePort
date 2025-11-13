.class public final Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy$RequestInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


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
