.class public abstract Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "SemEnhancedAttestationPolicyCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemEAPolicyCb"


# instance fields
.field private blacklist mCb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

.field private blacklist mEACallback:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEACallback(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->mEACallback:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->mEACallback:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    .line 20
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback$1;-><init>(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)V

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->mCb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    return-void
.end method


# virtual methods
.method blacklist getEnhancedAttestationPolicyCallback()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->mCb:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    return-object v0
.end method

.method public abstract whitelist onFailure(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;)V
.end method

.method public abstract whitelist onSuccess(Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;)V
.end method
