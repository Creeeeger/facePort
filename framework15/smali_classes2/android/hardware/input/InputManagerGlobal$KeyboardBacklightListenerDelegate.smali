.class final Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardBacklightListenerDelegate"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$9qrYCXHrVho_o4sfUesRxWY4kqM(Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->lambda$notifyKeyboardBacklightChange$0(ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$notifyKeyboardBacklightChange$0(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;

    iget v2, p2, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    iget v3, p2, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    invoke-direct {v1, v2, v3}, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;-><init>(II)V

    invoke-interface {v0, p1, v1, p3}, Landroid/hardware/input/InputManager$KeyboardBacklightListener;->onKeyboardBacklightChanged(ILandroid/hardware/input/KeyboardBacklightState;Z)V

    return-void
.end method


# virtual methods
.method blacklist notifyKeyboardBacklightChange(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
