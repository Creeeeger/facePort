.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    sget v0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    return-void
.end method
