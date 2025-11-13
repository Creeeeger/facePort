.class public Landroid/accessibilityservice/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;,
        Landroid/accessibilityservice/InputMethod$SessionImpl;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "A11yInputMethod"


# instance fields
.field private blacklist mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private blacklist mInputStarted:Z

.field private final blacklist mService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/accessibilityservice/InputMethod;)Landroid/accessibilityservice/AccessibilityService;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-void
.end method


# virtual methods
.method final blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 4

    new-instance v0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/InputMethod$SessionImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/accessibilityservice/InputMethod$SessionImpl;-><init>(Landroid/accessibilityservice/InputMethod;Landroid/accessibilityservice/InputMethod$SessionImpl-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;-><init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;->sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method final blacklist doFinishInput()V
    .locals 2

    const-string v0, "CALL: doFinishInput"

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "CALL: onFinishInput"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/accessibilityservice/InputMethod;->onFinishInput()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iput-object v0, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method final blacklist doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/accessibilityservice/InputMethod;->doFinishInput()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    iput-object p1, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iput-object p2, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v0, "A11yInputMethod"

    const-string v1, "CALL: onStartInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Landroid/accessibilityservice/InputMethod;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public final whitelist getCurrentInputConnection()Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;-><init>(Landroid/accessibilityservice/InputMethod;Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public final whitelist getCurrentInputStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    return v0
.end method

.method public whitelist onFinishInput()V
    .locals 0

    return-void
.end method

.method public whitelist onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onUpdateSelection(IIIIII)V
    .locals 0

    return-void
.end method

.method final blacklist restartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restartInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AccessibilityService.restartInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/accessibilityservice/InputMethod;->doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method final blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AccessibilityService.startInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/accessibilityservice/InputMethod;->doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
