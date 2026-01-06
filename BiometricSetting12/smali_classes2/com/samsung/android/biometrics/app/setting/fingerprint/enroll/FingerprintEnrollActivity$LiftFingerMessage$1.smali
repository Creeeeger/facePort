.class Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "LiftFingerMessage : run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/16 v1, 0x191

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/16 v1, 0x192

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$408(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$502(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/16 v1, 0xd3

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/16 v1, 0xcb

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/16 v1, 0xd2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
