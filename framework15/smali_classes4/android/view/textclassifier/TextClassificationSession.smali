.class final Landroid/view/textclassifier/TextClassificationSession;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;,
        Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TextClassificationSession"


# instance fields
.field private final blacklist mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final blacklist mCleaner:Lsun/misc/Cleaner;

.field private final blacklist mDelegate:Landroid/view/textclassifier/TextClassifier;

.field private blacklist mDestroyed:Z

.field private final blacklist mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public static synthetic blacklist $r8$lambda$58iCH16OLdCCo_AecRkKFRa4Nx4(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$classifyText$1(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8X1e1HwZdfGlYoTBfnXXMD7opCo(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$suggestSelection$0(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$IM3_y9ok-TceXCVqKZ1ohOjTmv0(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$detectLanguage$4(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$NaT1t3UvBImoy-ziEbbo6CQF8wo(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$suggestConversationActions$3(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$P84YPWmwOWbuRphZq1ABXozpOFg(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/SelectionEvent;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$onSelectionEvent$5(Landroid/view/textclassifier/SelectionEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Vp1YFCObWQso4W5Kkl2eIk6Zl9c(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$generateLinks$2(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ldlLyOA_K_rDHVRxnh4ooLxqwsk(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationSession;->lambda$onTextClassifierEvent$6(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->initializeRemoteSession()V

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;-><init>(Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mCleaner:Lsun/misc/Cleaner;

    return-void
.end method

.method private blacklist checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This TextClassification session has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initializeRemoteSession()V
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    instance-of v0, v0, Landroid/view/textclassifier/SystemTextClassifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier;->initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$classifyText$1(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$detectLanguage$4(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$generateLinks$2(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onSelectionEvent$5(Landroid/view/textclassifier/SelectionEvent;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextClassificationSession"

    const-string v2, "Error reporting text classifier selection event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$onTextClassifierEvent$6(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p1, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextClassificationSession"

    const-string v2, "Error reporting text classifier event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic blacklist lambda$suggestConversationActions$3(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$suggestSelection$0(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassification$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public whitelist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLanguage$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextLanguage;

    return-object v0
.end method

.method public whitelist generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda4;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLinks$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public whitelist getMaxGenerateLinksTextLength()I
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;-><init>(Landroid/view/textclassifier/TextClassifier;)V

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist isDestroyed()Z
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/SelectionEvent;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassifierEvent;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda6;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/ConversationActions$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    return-object v0
.end method

.method public whitelist suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextSelection$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextSelection;

    return-object v0
.end method
