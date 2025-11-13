.class final Landroid/hardware/input/InputManager$PointerIconChangedListener;
.super Landroid/hardware/input/IPointerIconChangedListener$Stub;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerIconChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManager;)V
    .locals 0

    .line 2796
    iput-object p1, p0, Landroid/hardware/input/InputManager$PointerIconChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/hardware/input/IPointerIconChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$PointerIconChangedListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$PointerIconChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 2799
    iget-object v0, p0, Landroid/hardware/input/InputManager$PointerIconChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0, p1, p2}, Landroid/hardware/input/InputManager;->-$$Nest$monPointerIconChanged(Landroid/hardware/input/InputManager;ILandroid/view/PointerIcon;)V

    .line 2800
    return-void
.end method
