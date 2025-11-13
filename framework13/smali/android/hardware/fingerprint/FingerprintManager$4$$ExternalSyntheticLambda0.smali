.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager$4;->lambda$turnOffDozeHlpmMode$3(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    return-void
.end method
