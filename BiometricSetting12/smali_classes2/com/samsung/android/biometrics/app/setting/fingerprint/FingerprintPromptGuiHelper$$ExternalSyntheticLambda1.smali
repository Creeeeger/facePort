.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->lambda$runFingerPositionTalkBack$2$FingerprintPromptGuiHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
