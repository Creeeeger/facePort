.class Landroid/inputmethodservice/InlineSuggestionSessionController;
.super Ljava/lang/Object;
.source "InlineSuggestionSessionController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionSessionController"


# instance fields
.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImeClientFieldId:Landroid/view/autofill/AutofillId;

.field private blacklist mImeClientPackageName:Ljava/lang/String;

.field private blacklist mImeInputStarted:Z

.field private blacklist mImeInputViewStarted:Z

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mRequestSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/inputmethodservice/InlineSuggestionSession;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method private static blacklist match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method blacklist match(Landroid/view/autofill/AutofillId;)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0, v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist notifyOnFinishInput()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodFinishInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodFinishInput() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist notifyOnFinishInputView()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodFinishInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist notifyOnShowInputRequested(Z)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodShowInputRequested() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    sget-object v1, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->isCallbackInvoked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInput() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method blacklist notifyOnStartInputView()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist onMakeInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .locals 9

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->invalidate()V

    :cond_0
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSession;

    iget-object v4, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v5, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iget-object v6, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    iget-object v8, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroid/inputmethodservice/InlineSuggestionSession;-><init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
