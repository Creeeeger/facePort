.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/FingerprintManager;

.field public final synthetic blacklist f$1:Landroid/hardware/fingerprint/FingerprintCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/fingerprint/FingerprintCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->$r8$lambda$JcQ1-aoSrmsik1Ue6UVK1NlIeeI(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    return-void
.end method
