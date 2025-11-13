.class final Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;
.super Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback$Stub;
.source "InlineSuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InlineSuggestionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineSuggestionsResponseCallbackImpl"
.end annotation


# instance fields
.field private volatile blacklist mInvalid:Z

.field private final blacklist mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InlineSuggestionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/inputmethodservice/InlineSuggestionSession;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->mInvalid:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/inputmethodservice/InlineSuggestionSession;Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;-><init>(Landroid/inputmethodservice/InlineSuggestionSession;)V

    return-void
.end method


# virtual methods
.method blacklist invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->mInvalid:Z

    return-void
.end method

.method public blacklist onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 3

    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->mInvalid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->-$$Nest$fgetmMainThreadHandler(Landroid/inputmethodservice/InlineSuggestionSession;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
