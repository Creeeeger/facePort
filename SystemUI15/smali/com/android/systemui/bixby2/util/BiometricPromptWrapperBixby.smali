.class public Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricPromptWrapperBixby"


# instance fields
.field private final mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field private mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$HtgQWY7C0MqUCg5mmhQcQ1Lq53U(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->lambda$buildAndRun$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$1;-><init>(Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput-object p1, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-void
.end method

.method private static synthetic lambda$buildAndRun$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public buildAndRun(Landroid/os/CancellationSignal;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public initPrompt(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-void
.end method
