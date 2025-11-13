.class Lcom/samsung/android/knox/integrity/AttestationPolicy$1;
.super Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->nonce:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    iget-object v1, v1, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    iget-object v5, v5, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
