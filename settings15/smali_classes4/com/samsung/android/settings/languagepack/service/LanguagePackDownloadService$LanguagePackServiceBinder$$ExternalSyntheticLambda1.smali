.class public final synthetic Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v1, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    sget-object v3, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_CANCEL:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    iput-object v3, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    const-string p1, "LanguagePackDownloadService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestCancelTask() canceled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
