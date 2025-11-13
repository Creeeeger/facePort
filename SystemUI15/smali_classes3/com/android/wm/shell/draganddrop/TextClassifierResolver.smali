.class public final Lcom/android/wm/shell/draganddrop/TextClassifierResolver;
.super Lcom/android/wm/shell/draganddrop/BaseResolver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCallingUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/BaseResolver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    return-void
.end method

.method public static runOnBlocking(Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object p0
.end method


# virtual methods
.method public final getResultFromTextClassification(Landroid/view/textclassifier/TextClassification;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;Z)Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;
    .locals 10

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/RemoteAction;

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const-string v1, "android.intent.action.TRANSLATE"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->mCallingUserId:I

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/wm/shell/draganddrop/BaseResolver;->resolveActivities(Landroid/content/Intent;ILjava/util/ArrayList;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v0

    :cond_3
    invoke-static {v3}, Lcom/android/wm/shell/draganddrop/BaseResolver;->calculateContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    :goto_0
    move-object v7, p2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mTempList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_5
    move-object v9, v0

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    const/4 v8, 0x1

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;ZLandroid/graphics/drawable/Icon;)V

    return-object p2

    :cond_6
    :goto_2
    return-object v0
.end method

.method public final makeFrom(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)Ljava/util/Optional;
    .locals 1

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/BaseResolver;->TAG:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/TextClassifierResolver;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->runOnBlocking(Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    const-string p0, "failed to update from text classifier due to timeout."

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "failed to update from text classifier."

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
