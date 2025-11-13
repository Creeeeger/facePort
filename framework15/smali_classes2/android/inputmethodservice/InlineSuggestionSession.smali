.class Landroid/inputmethodservice/InlineSuggestionSession;
.super Ljava/lang/Object;
.source "InlineSuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;
    }
.end annotation


# static fields
.field static final blacklist EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

.field private static final blacklist TAG:Ljava/lang/String; = "ImsInlineSuggestionSession"


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

.field private blacklist mCallbackInvoked:Z

.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private blacklist mPreviousResponseIsEmpty:Ljava/lang/Boolean;

.field private final blacklist mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

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

.field private blacklist mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/inputmethodservice/InlineSuggestionSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    sput-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;",
            "Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;",
            "Landroid/inputmethodservice/InlineSuggestionSessionController;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    iput-object p4, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    iput-object p6, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    iput-object p7, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method blacklist consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method blacklist getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    return-object v0
.end method

.method blacklist getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    return-object v0
.end method

.method blacklist handleOnInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    return-void
.end method

.method blacklist invalidate()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsInlineSuggestionSession"

    const-string v2, "onInlineSuggestionsSessionInvalidated() remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    :cond_0
    return-void
.end method

.method blacklist isCallbackInvoked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    return v0
.end method

.method blacklist makeInlineSuggestionRequestUncheck()V
    .locals 3

    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getUiExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostInputToken(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->filterContentTypes()V

    new-instance v1, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;-><init>(Landroid/inputmethodservice/InlineSuggestionSession;Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl-IA;)V

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeInlinedSuggestionsRequest() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsInlineSuggestionSession"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    return-void
.end method

.method blacklist shouldSendImeStatus()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
