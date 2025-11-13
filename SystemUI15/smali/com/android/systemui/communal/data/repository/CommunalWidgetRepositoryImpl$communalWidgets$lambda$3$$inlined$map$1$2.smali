.class public final Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $widgetEntries$inlined:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/util/List;Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;->$widgetEntries$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v4, v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;->$widgetEntries$inlined:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;

    sget v8, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->$r8$clinit:I

    iget-object v8, v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v8, :cond_4

    new-instance v9, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    iget v10, v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;->appWidgetId:I

    iget v7, v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;->priority:I

    invoke-direct {v9, v10, v8, v7}, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;I)V

    goto :goto_4

    :cond_4
    move-object v8, v1

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/common/shared/model/PackageInstallSession;

    iget-object v11, v11, Lcom/android/systemui/common/shared/model/PackageInstallSession;->packageName:Ljava/lang/String;

    iget-object v12, v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;->componentName:Ljava/lang/String;

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_6
    move-object v12, v10

    :goto_2
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_7
    move-object v9, v10

    :goto_3
    check-cast v9, Lcom/android/systemui/common/shared/model/PackageInstallSession;

    if-eqz v9, :cond_8

    new-instance v8, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    iget-object v15, v9, Lcom/android/systemui/common/shared/model/PackageInstallSession;->icon:Landroid/graphics/Bitmap;

    iget-object v10, v9, Lcom/android/systemui/common/shared/model/PackageInstallSession;->user:Landroid/os/UserHandle;

    iget-object v14, v9, Lcom/android/systemui/common/shared/model/PackageInstallSession;->packageName:Ljava/lang/String;

    iget v12, v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;->appWidgetId:I

    iget v13, v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$CommunalWidgetEntry;->priority:I

    move-object v11, v8

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;-><init>(IILjava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;)V

    move-object v9, v8

    goto :goto_4

    :cond_8
    move-object v9, v10

    :goto_4
    if-eqz v9, :cond_3

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iput v5, v2, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$communalWidgets$lambda$3$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v6, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
