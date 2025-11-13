.class public final Lcom/android/settings/wifi/dpp/WifiDppUtils$2;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$listener:Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;

.field public final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppUtils$2;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppUtils$2;->val$listener:Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppUtils$2;->val$listener:Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;->onAuthenticationError()V

    :cond_0
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppUtils$2;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
