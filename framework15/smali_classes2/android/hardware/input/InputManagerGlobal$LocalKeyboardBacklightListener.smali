.class Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;
.super Landroid/hardware/input/IKeyboardBacklightListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalKeyboardBacklightListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onBrightnessChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyboardBacklightListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v3}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->notifyKeyboardBacklightChange(ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
