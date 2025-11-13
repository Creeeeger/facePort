.class Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityDisplayProxy.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;-><init>(Landroid/view/accessibility/AccessibilityDisplayProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;


# direct methods
.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityDisplayProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist init(ILandroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->-$$Nest$fputmConnectionId(Landroid/view/accessibility/AccessibilityDisplayProxy;I)V

    return-void
.end method

.method public blacklist onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .locals 0

    return-void
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityDisplayProxy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public blacklist onFingerprintCapturingGesturesChanged(Z)V
    .locals 0

    return-void
.end method

.method public blacklist onFingerprintGesture(I)V
    .locals 0

    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onInterrupt()V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->interrupt()V

    return-void
.end method

.method public blacklist onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public blacklist onPerformGestureResult(IZ)V
    .locals 0

    return-void
.end method

.method public blacklist onServiceConnected()V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->-$$Nest$msendServiceInfos(Landroid/view/accessibility/AccessibilityDisplayProxy;)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;->val$this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityDisplayProxy;->onProxyConnected()V

    return-void
.end method

.method public blacklist onSoftKeyboardShowModeChanged(I)V
    .locals 0

    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .locals 0

    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .locals 0

    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method
