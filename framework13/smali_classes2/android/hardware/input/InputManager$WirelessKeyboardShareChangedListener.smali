.class final Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;
.super Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WirelessKeyboardShareChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManager;)V
    .locals 0

    .line 2684
    iput-object p1, p0, Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "index"    # I
    .param p4, "contents"    # Ljava/lang/String;

    .line 2687
    iget-object v0, p0, Landroid/hardware/input/InputManager$WirelessKeyboardShareChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/hardware/input/InputManager;->-$$Nest$monWirelessKeyboardShareChanged(Landroid/hardware/input/InputManager;JILjava/lang/String;)V

    .line 2688
    return-void
.end method
