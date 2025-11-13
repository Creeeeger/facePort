.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FpstFingerprintUsefulFeature"

    const-string/jumbo v0, "onClick : OK"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/16 v0, 0x205e

    const/16 v1, 0x205f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintUsefulFeature$FingerprintUsefulFeatureFragment;->finishFingerprintUsefulFeature(I)V

    return-void
.end method
