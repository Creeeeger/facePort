.class Landroid/hardware/fingerprint/FingerprintManager$4;
.super Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->semRegisterFingerprintViewListener(Landroid/hardware/fingerprint/SemFingerprintViewListener;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic blacklist val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 2095
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$hideAodScreen$4(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/hardware/fingerprint/SemFingerprintViewListener;

    .line 2131
    const-string v0, "FingerprintManager"

    const-string v1, "deliver event to AOD: hideAodScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onAuthenticationSucceeded()V

    .line 2133
    return-void
.end method

.method static synthetic blacklist lambda$turnOffDozeHlpmMode$3(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/hardware/fingerprint/SemFingerprintViewListener;

    .line 2123
    const-string v0, "FingerprintManager"

    const-string v1, "deliver event to AOD: turnOffDozeHlpmMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onDismiss()V

    .line 2125
    return-void
.end method

.method static synthetic blacklist lambda$turnOffDozeMode$1(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/hardware/fingerprint/SemFingerprintViewListener;

    .line 2107
    const-string v0, "FingerprintManager"

    const-string v1, "deliver event to AOD: turnOffDozeMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onStopped()V

    .line 2109
    return-void
.end method

.method static synthetic blacklist lambda$turnOnDozeHlpmMode$2(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/hardware/fingerprint/SemFingerprintViewListener;

    .line 2115
    const-string v0, "FingerprintManager"

    const-string v1, "deliver event to AOD: turnOnDozeHlpmMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onShow()V

    .line 2117
    return-void
.end method

.method static synthetic blacklist lambda$turnOnDozeMode$0(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/hardware/fingerprint/SemFingerprintViewListener;

    .line 2099
    const-string v0, "FingerprintManager"

    const-string v1, "deliver event to AOD: turnOnDozeMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onStarted()V

    .line 2101
    return-void
.end method


# virtual methods
.method public blacklist hideAodScreen()V
    .locals 3

    .line 2130
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2134
    return-void
.end method

.method public blacklist turnOffDozeHlpmMode()V
    .locals 3

    .line 2122
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2126
    return-void
.end method

.method public blacklist turnOffDozeMode()V
    .locals 3

    .line 2106
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2110
    return-void
.end method

.method public blacklist turnOnDozeHlpmMode()V
    .locals 3

    .line 2114
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2118
    return-void
.end method

.method public blacklist turnOnDozeMode()V
    .locals 3

    .line 2098
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$4$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2102
    return-void
.end method
