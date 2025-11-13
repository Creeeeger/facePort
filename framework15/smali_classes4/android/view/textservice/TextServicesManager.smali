.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final greylist-max-o DBG:Z

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static greylist-max-o sInstance:Landroid/view/textservice/TextServicesManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final greylist-max-o mService:Lcom/android/internal/textservice/ITextServicesManager;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/view/inputmethod/InputMethodManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string/jumbo v0, "textservices"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iput p1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    iput-object p2, p0, Landroid/view/textservice/TextServicesManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public static blacklist createInstance(Landroid/content/Context;)Landroid/view/textservice/TextServicesManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/TextServicesManager;-><init>(ILandroid/view/inputmethod/InputMethodManager;)V

    return-object v0
.end method

.method public static greylist getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 4

    const-class v0, Landroid/view/textservice/TextServicesManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/textservice/TextServicesManager;-><init>(ILandroid/view/inputmethod/InputMethodManager;)V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static greylist-max-o parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEnabledSpellCheckerInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public greylist-max-r getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public whitelist isSpellCheckerEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 4

    const/4 v0, 0x7

    new-instance v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    invoke-virtual {v1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setShouldReferToSpellCheckerLanguageSettings(Z)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    :cond_0
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v3

    invoke-virtual {p0, v3, v2, p3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v3

    return-object v3
.end method

.method public whitelist newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;
    .locals 12

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v3, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v1, v3, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v2

    :cond_4
    if-eqz v0, :cond_a

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v5, :cond_6

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_3

    :cond_6
    :goto_1
    return-object v2

    :cond_7
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-virtual {v1, v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v3, v7

    goto :goto_3

    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v5, :cond_9

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v3, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-nez v3, :cond_b

    return-object v2

    :cond_b
    new-instance v2, Landroid/view/textservice/SpellCheckerSession;

    invoke-direct {v2, v1, p0, p3, p2}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Ljava/util/concurrent/Executor;)V

    :try_start_1
    iget-object v4, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v5, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v8

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getSupportedAttributes()I

    move-result v11

    invoke-interface/range {v4 .. v11}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-object v2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :catch_1
    move-exception v1

    return-object v2
.end method
