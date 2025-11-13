.class Landroid/hardware/fingerprint/FingerprintManager$5;
.super Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->semUpdateTrustApp(Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic blacklist val$callback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 2310
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$5;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$5;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
    .param p1, "code"    # I

    .line 2313
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;->onRequested(I)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .locals 3
    .param p1, "code"    # I

    .line 2313
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$5;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$5;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2314
    return-void
.end method
