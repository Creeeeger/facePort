.class public Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field private blacklist mSystemCallingHideSoftInput:Z

.field private blacklist mSystemCallingShowSoftInput:Z

.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor whitelist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .line 775
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public whitelist attachToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 827
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 831
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->attachToWindowToken(Landroid/os/IBinder;)V

    .line 832
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    .line 833
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 834
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InkWindow;->setToken(Landroid/os/IBinder;)V

    .line 837
    :cond_0
    return-void

    .line 828
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToken() must be called at most once. token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 4
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 847
    const-wide/16 v0, 0x20

    const-string v2, "IMS.bindInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 848
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v2, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 849
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 852
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mreportFullscreenMode(Landroid/inputmethodservice/InputMethodService;)V

    .line 853
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 854
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 855
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/ImsConfigurationTracker;->onBindInput(Landroid/content/res/Resources;)V

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 857
    return-void
.end method

.method public blacklist canStartStylusHandwriting(I)V
    .locals 3
    .param p1, "requestId"    # I

    .line 1060
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    const-string v1, "InputMethod"

    if-eqz v0, :cond_0

    .line 1061
    const-string v0, "There is an ongoing Handwriting session. ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v0, v0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-nez v0, :cond_1

    .line 1065
    const-string v0, "Input should have started before starting Stylus handwriting."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onPrepareStylusHandwriting()V

    .line 1071
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1073
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onStartStylusHandwriting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V

    goto :goto_0

    .line 1076
    :cond_3
    const-string v0, "IME is not ready. Can\'t start Stylus Handwriting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void
.end method

.method public whitelist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 1145
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdispatchOnCurrentInputMethodSubtypeChanged(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1146
    return-void
.end method

.method public final blacklist dispatchStartInputWithToken(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;ZLandroid/os/IBinder;ILandroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 1
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z
    .param p4, "startInputToken"    # Landroid/os/IBinder;
    .param p5, "navButtonFlags"    # I
    .param p6, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 913
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 914
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 915
    if-eqz p3, :cond_0

    .line 916
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 918
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 924
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p6}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmImeDispatcher(Landroid/inputmethodservice/InputMethodService;Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 925
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-interface {v0, p6}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    .line 929
    :cond_1
    return-void
.end method

.method public blacklist finishStylusHandwriting()V
    .locals 1

    .line 1136
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->finishStylusHandwriting()V

    .line 1137
    return-void
.end method

.method public whitelist hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSoftInput(), flags : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    if-nez v0, :cond_0

    .line 966
    const-string v0, "IME shouldn\'t call hideSoftInput on itself. Use requestHideSelf(int) itself"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void

    .line 970
    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v1

    const-string v2, "InputMethodService.InputMethodImpl#hideSoftInput"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 973
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    .line 974
    .local v0, "wasVisible":Z
    const-wide/16 v1, 0x20

    const-string v4, "IMS.hideSoftInput"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 976
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v5, 0x0

    iput v5, v4, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 977
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v5, v4, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 978
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 979
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    .line 980
    .local v4, "isVisible":Z
    const/4 v6, 0x1

    if-eq v4, v0, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v5

    .line 981
    .local v7, "visibilityChanged":Z
    :goto_0
    if-eqz p2, :cond_4

    .line 982
    if-eqz v7, :cond_2

    .line 983
    const/4 v5, 0x3

    goto :goto_1

    .line 984
    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 985
    :cond_3
    move v5, v6

    :goto_1
    nop

    .line 982
    invoke-virtual {p2, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 987
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 988
    return-void
.end method

.method public blacklist hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "hideInputToken"    # Landroid/os/IBinder;

    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 950
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 951
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    .line 952
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurHideInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingHideSoftInput:Z

    .line 954
    return-void
.end method

.method public blacklist initInkWindow()V
    .locals 2

    .line 1125
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->initOnly()V

    .line 1126
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onPrepareStylusHandwriting()V

    .line 1127
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmOnPreparedStylusHwCalled(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1128
    return-void
.end method

.method public final blacklist initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "privilegedOperations"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .param p3, "configChanges"    # I
    .param p4, "stylusHwSupported"    # Z
    .param p5, "navButtonFlags"    # I

    .line 789
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDestroyed(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "InputMethod"

    const-string v1, "The InputMethodService has already onDestroyed().Ignore the initialization."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 794
    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "IMS.initializeInternal"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 795
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmConfigTracker(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/ImsConfigurationTracker;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/inputmethodservice/ImsConfigurationTracker;->onInitialize(I)V

    .line 796
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    .line 797
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmPrivOps(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V

    .line 798
    if-eqz p4, :cond_1

    .line 799
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v3, Landroid/inputmethodservice/InkWindow;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/inputmethodservice/InkWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmInkWindow(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InkWindow;)V

    .line 801
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 802
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->attachToken(Landroid/os/IBinder;)V

    .line 803
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 804
    return-void
.end method

.method synthetic blacklist lambda$startStylusHandwriting$0$android-inputmethodservice-InputMethodService$InputMethodImpl(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1111
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 1112
    const/4 v0, 0x0

    return v0

    .line 1114
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onStylusHandwritingMotionEvent(Landroid/view/MotionEvent;)V

    .line 1115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist minimizeSoftInput(I)V
    .locals 5
    .param p1, "height"    # I

    .line 1155
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    .line 1156
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1155
    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "defaultIME":Ljava/lang/String;
    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1160
    return-void

    .line 1163
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    const-string v2, "InputMethod"

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1168
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1169
    const-string v1, "Keyboard is not showing so minimizeSoftInput not working."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void

    .line 1172
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 1173
    const-string v1, "height is 0"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-void

    .line 1176
    :cond_3
    if-lez p1, :cond_4

    const/16 v1, 0xfd

    if-le p1, v1, :cond_5

    .line 1177
    :cond_4
    const/16 p1, 0x16

    .line 1179
    :cond_5
    int-to-float v1, p1

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int p1, v1

    .line 1180
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v4, v1, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    .line 1181
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v3, v3, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/InputMethodService;->doMinimizeSoftInput(I)V

    .line 1184
    return-void

    .line 1164
    :cond_6
    :goto_0
    const-string v1, "mInputView or mCandidatesFrame is null in minimizeSoftInput"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 1
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 818
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInlineSuggestionSessionController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InlineSuggestionSessionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->onMakeInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 819
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 1
    .param p1, "navButtonFlags"    # I

    .line 938
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmNavigationBarController(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/NavigationBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/NavigationBarController;->onNavButtonFlagsChanged(I)V

    .line 939
    return-void
.end method

.method public whitelist restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 898
    const-wide/16 v0, 0x20

    const-string v2, "IMS.restartInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 899
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 900
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 901
    return-void
.end method

.method public whitelist showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSoftInput(), flags : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    if-nez v0, :cond_0

    .line 1016
    const-string v0, " IME shouldn\'t call showSoftInput on itself. Use requestShowSelf(int) itself"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 1021
    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "IMS.showSoftInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1022
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmDumper(Landroid/inputmethodservice/InputMethodService;)Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    move-result-object v3

    const-string v4, "InputMethodService.InputMethodImpl#showSoftInput"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    .line 1025
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    .line 1028
    .local v2, "wasVisible":Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v3, v3, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v3, v3, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v3, :cond_2

    .line 1029
    :cond_1
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v3, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 1030
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->unMinimizeSoftInput()V

    .line 1031
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v4, v3, Landroid/inputmethodservice/InputMethodService;->needSetlayout:Z

    .line 1034
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3, p1, v4}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mdispatchOnShowInputRequested(Landroid/inputmethodservice/InputMethodService;IZ)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 1035
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3, v6}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1037
    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mmapToImeWindowStatus(Landroid/inputmethodservice/InputMethodService;)I

    move-result v7

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v8, v8, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-static {v3, v7, v8}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$msetImeWindowStatus(Landroid/inputmethodservice/InputMethodService;II)V

    .line 1039
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v3

    .line 1040
    .local v3, "isVisible":Z
    if-eq v3, v2, :cond_4

    move v7, v6

    goto :goto_0

    :cond_4
    move v7, v4

    .line 1041
    .local v7, "visibilityChanged":Z
    :goto_0
    if-eqz p2, :cond_7

    .line 1042
    if-eqz v7, :cond_5

    .line 1043
    const/4 v6, 0x2

    goto :goto_1

    .line 1044
    :cond_5
    if-eqz v2, :cond_6

    move v6, v4

    goto :goto_1

    .line 1045
    :cond_6
    nop

    :goto_1
    nop

    .line 1042
    invoke-virtual {p2, v6, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1048
    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v4, v5, Landroid/inputmethodservice/InputMethodService;->mIsPressBtnSIPOnOff:Z

    .line 1050
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1051
    return-void
.end method

.method public blacklist showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "showInputToken"    # Landroid/os/IBinder;

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 999
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p3}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 1000
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 1001
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmCurShowInputToken(Landroid/inputmethodservice/InputMethodService;Landroid/os/IBinder;)V

    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->mSystemCallingShowSoftInput:Z

    .line 1003
    return-void
.end method

.method public whitelist startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 886
    const-wide/16 v0, 0x20

    const-string v2, "IMS.startInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 887
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 888
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 889
    return-void
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 1091
    .local p3, "stylusEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;)Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmHandwritingRequestId(Landroid/inputmethodservice/InputMethodService;Ljava/util/OptionalInt;)V

    .line 1099
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1101
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InkWindow;->show()V

    .line 1104
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    invoke-interface {p3, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1107
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 1109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fputmHandwritingEventReceiver(Landroid/inputmethodservice/InputMethodService;Landroid/view/InputEventReceiver;)V

    .line 1117
    return-void
.end method

.method public blacklist unMinimizeSoftInput()V
    .locals 2

    .line 1192
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v0, v0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    .line 1194
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v1, v1, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    .line 1197
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    .line 1199
    return-void
.end method

.method public whitelist unbindInput()V
    .locals 2

    .line 870
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 871
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 872
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 874
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmInkWindow(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InkWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InkWindow;->hide(Z)V

    .line 877
    :cond_0
    return-void
.end method
