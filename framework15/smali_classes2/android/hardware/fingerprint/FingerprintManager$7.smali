.class Landroid/hardware/fingerprint/FingerprintManager$7;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->semRemove(IILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic blacklist val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "semRemove: removal error"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;->onRequested(I)V

    :cond_0
    return-void
.end method

.method public blacklist onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "semRemove: removal succeeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;->onRequested(I)V

    :cond_0
    return-void
.end method
