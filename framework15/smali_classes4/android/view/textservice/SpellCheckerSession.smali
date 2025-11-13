.class public Landroid/view/textservice/SpellCheckerSession;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;,
        Landroid/view/textservice/SpellCheckerSession$InternalListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o MSG_ON_GET_SUGGESTION_MULTIPLE:I = 0x1

.field private static final greylist-max-o MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE:I = 0x2

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.view.textservice.scs"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

.field private final greylist-max-o mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private final greylist-max-r mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field private final greylist-max-o mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

.field private final blacklist mTextServicesManager:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$HLpz1ncBxKJFYFxjJQck1S0pODE(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->lambda$handleOnGetSentenceSuggestionsMultiple$1([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y1J69wRkz8QXmowMq8mWqj6ydAQ(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->lambda$handleOnGetSuggestionsMultiple$0([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;-><init>(Landroid/view/textservice/SpellCheckerSession;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$InternalListener;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$InternalListener;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSession;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "finishSession"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private synthetic blacklist lambda$handleOnGetSentenceSuggestionsMultiple$1([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleOnGetSuggestionsMultiple$0([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->cancel()V

    return-void
.end method

.method public whitelist close()V
    .locals 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->close()V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v1, p1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    return-void
.end method

.method public whitelist getSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public greylist-max-o getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    return-object v0
.end method

.method public whitelist getSuggestions(Landroid/view/textservice/TextInfo;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textservice/TextInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    return-void
.end method

.method public whitelist getSuggestions([Landroid/view/textservice/TextInfo;IZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/textservice/SuggestionsInfo;

    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    return-void
.end method

.method public greylist-max-o getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    return-object v0
.end method

.method greylist-max-o handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method greylist-max-o handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/textservice/SpellCheckerSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist isSessionDisconnected()Z
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->isDisconnected()Z

    move-result v0

    return v0
.end method
