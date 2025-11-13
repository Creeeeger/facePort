.class Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
.super Landroid/os/IVibratorStateListener$Stub;
.source "InputDeviceVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnVibratorStateChangedListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceVibrator;


# direct methods
.method public static synthetic blacklist $r8$lambda$sAN74truMQ0dvTsZJSl-LvHiBU4(Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->lambda$onVibrating$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/input/InputDeviceVibrator;Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->this$0:Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {p0}, Landroid/os/IVibratorStateListener$Stub;-><init>()V

    iput-object p3, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    return-void
.end method

.method private synthetic blacklist lambda$onVibrating$0(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onVibrating(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
