.class public abstract Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;-><init>(Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback;I)V

    iput-object p1, v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicyCallback$EaAttestationPolicyCallback;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onAttestationFinished(Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;)V
.end method
