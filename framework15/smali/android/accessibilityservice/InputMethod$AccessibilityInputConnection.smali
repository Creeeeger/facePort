.class public final Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccessibilityInputConnection"
.end annotation


# instance fields
.field private final blacklist mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

.field final synthetic blacklist this$0:Landroid/accessibilityservice/InputMethod;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/InputMethod;Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyStates(I)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->clearMetaKeyStates(I)V

    :cond_0
    return-void
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    :cond_0
    return-void
.end method

.method public whitelist deleteSurroundingText(II)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->deleteSurroundingText(II)V

    :cond_0
    return-void
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performContextMenuAction(I)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->performContextMenuAction(I)V

    :cond_0
    return-void
.end method

.method public whitelist performEditorAction(I)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->performEditorAction(I)V

    :cond_0
    return-void
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public whitelist setSelection(II)V
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;->mIc:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->setSelection(II)V

    :cond_0
    return-void
.end method
