.class public final Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    instance-of v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;

    iget v4, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->SETTINGS_INTENT:Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->recommendations:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/smartspace/SmartspaceAction;

    new-instance v14, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v8}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v9, v14

    move-object v6, v14

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;-><init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;

    iget-object v0, v7, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->applicationContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v8, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v10, v0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v8, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataKt;->TAG:Ljava/lang/String;

    const-string v9, "Fail to get media recommendation\'s app info"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    iget-object v12, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v7, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->applicationContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v9, "KEY_SMARTSPACE_APP_NAME"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v8

    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    move-object v13, v7

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v7, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v13, v0

    goto :goto_5

    :cond_6
    sget-object v9, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaDataKt;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Package "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not have a main launcher activity. Fallback to full app name"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {v0, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object v13, v8

    :goto_5
    iget-object v14, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isValid()Z

    move-result v0

    iget-object v9, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    move-object v8, v6

    move-object v2, v15

    move v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;Ljava/lang/CharSequence;Landroid/content/Intent;ZLjava/util/List;)V

    const/4 v2, 0x1

    iput v2, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2$1;->label:I

    iget-object v0, v1, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v6, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    return-object v4

    :cond_7
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
