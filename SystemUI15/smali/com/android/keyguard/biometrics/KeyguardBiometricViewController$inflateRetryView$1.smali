.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    return-void
.end method
