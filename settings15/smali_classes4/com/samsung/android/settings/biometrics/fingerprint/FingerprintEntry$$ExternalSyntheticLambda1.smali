.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;

    sget p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
