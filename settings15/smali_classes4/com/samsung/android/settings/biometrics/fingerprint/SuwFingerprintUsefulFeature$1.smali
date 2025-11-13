.class public final Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

.field public final synthetic val$mScreenOffIconAodArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;->val$mScreenOffIconAodArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iget-object p2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iget-object p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;->val$mScreenOffIconAodArray:[Ljava/lang/String;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    iget p1, p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mUserId:I

    invoke-static {p2, p4, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;

    iget-object p1, p1, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature;->mScreenOffIconAodSummary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/SuwFingerprintUsefulFeature$1;->val$mScreenOffIconAodArray:[Ljava/lang/String;

    aget-object p0, p0, p3

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
