.class public abstract Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EAPolicyCb"


# instance fields
.field public acb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;->acb:Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;

    return-void
.end method


# virtual methods
.method public final getEaAttestationCb(Ljava/lang/String;)Lcom/samsung/android/knox/integrity/IEnhancedAttestationPolicyCallback;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;-><init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;)V

    iput-object p1, v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
.end method
