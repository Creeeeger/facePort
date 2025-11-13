.class Landroid/view/translation/Translator$TranslationResponseCallbackImpl;
.super Landroid/service/translation/ITranslationCallback$Stub;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationResponseCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$HWk6Hdg0GehGy4SCRxhVeQ-wPZE(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->lambda$onTranslationResponse$0(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/translation/ITranslationCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onTranslationResponse$0(Landroid/view/translation/TranslationResponse;)V
    .locals 1

    iget-object v0, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Translator"

    const-string/jumbo v1, "onTranslationResponse called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->restoreCallingIdentity(J)V

    throw v3
.end method
