.class Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;
.super Landroid/os/IVibratorStateListener$Stub;
.source "SystemVibratorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnVibratorStateChangedListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$mXNnCpEdZCmTzNjir6Jk-w0e-rw(Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->lambda$onVibrating$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IVibratorStateListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    return-void
.end method

.method private synthetic blacklist lambda$onVibrating$0(Z)V
    .locals 1

    iget-object v0, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onVibrating(Z)V
    .locals 2

    iget-object v0, p0, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibratorManager$OnVibratorStateChangedListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
