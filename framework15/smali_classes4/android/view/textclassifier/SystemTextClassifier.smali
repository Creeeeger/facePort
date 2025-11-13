.class public final Landroid/view/textclassifier/SystemTextClassifier;
.super Ljava/lang/Object;
.source "SystemTextClassifier.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;,
        Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "androidtc"


# instance fields
.field private final greylist-max-o mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final greylist-max-o mManagerService:Landroid/service/textclassifier/ITextClassifierService;

.field private greylist-max-o mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final greylist-max-o mSettings:Landroid/view/textclassifier/TextClassificationConstants;

.field private final blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string/jumbo v0, "textclassification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v0, v1, v2, p3}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method


# virtual methods
.method public whitelist classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextClassification$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textclassification"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error classifying text. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public whitelist destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, v1}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error destroying classification session."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public whitelist detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextLanguage$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textlanguage"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLanguage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error detecting language."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "SystemTextClassifier:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "mFallback"

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSessionId"

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSystemTcMetadata"

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public whitelist generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/textclassifier/SystemTextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/textclassifier/TextClassifier$Utils;->checkTextLength(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextLinks$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textlinks"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLinks;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error generating links. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxGenerateLinksTextLength()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    return v0
.end method

.method greylist-max-o initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextClassificationContext;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, p1, v1}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error starting a new classification session."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, v1, p1}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error reporting selection event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    :goto_0
    nop

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationContext;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)V

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1}, Landroid/service/textclassifier/ITextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error reporting textclassifier event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public whitelist suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/ConversationActions$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string v1, "conversation-actions"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/ConversationActions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error reporting selection event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method

.method public whitelist suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextSelection$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textselection"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextSelection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error suggesting selection for text. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
