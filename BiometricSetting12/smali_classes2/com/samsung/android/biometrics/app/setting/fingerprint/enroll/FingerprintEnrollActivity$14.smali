.class Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_2
    return-void
.end method
