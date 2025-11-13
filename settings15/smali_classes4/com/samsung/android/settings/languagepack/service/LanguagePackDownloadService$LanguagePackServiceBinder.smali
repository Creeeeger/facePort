.class public final Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;
.super Landroid/os/Binder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestCancelTask(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
