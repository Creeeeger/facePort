.class Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;
.super Ljava/lang/Object;
.source "EnhancedAttestationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestInfo"
.end annotation


# instance fields
.field private blacklist mAuk:Ljava/lang/String;

.field private blacklist mCb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

.field private blacklist mNonce:Ljava/lang/String;

.field private blacklist mOnPrem:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuk(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCb(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonce(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPrem(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mAuk:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mNonce:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mCb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    iput-boolean p4, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$RequestInfo;->mOnPrem:Z

    return-void
.end method
