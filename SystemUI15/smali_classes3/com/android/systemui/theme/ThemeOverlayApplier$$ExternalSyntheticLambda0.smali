.class public final synthetic Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayApplier;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:[Landroid/content/om/FabricatedOverlay;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/Set;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;ILjava/util/Set;Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/theme/ThemeOverlayApplier;

    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$2:[Landroid/content/om/FabricatedOverlay;

    iput p4, p0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/theme/ThemeOverlayApplier;

    iget-object v9, v0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    iget-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$2:[Landroid/content/om/FabricatedOverlay;

    iget v10, v0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$3:I

    iget-object v11, v0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$4:Ljava/util/Set;

    iget-object v12, v0, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Runnable;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "ThemeOverlayApplier"

    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda2;

    invoke-direct {v4, v8, v3}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v4}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, v9, v3}, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayApplier$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v8}, Lcom/android/systemui/theme/ThemeOverlayApplier;->getTransactionBuilder()Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v14

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    new-instance v2, Landroid/content/om/OverlayIdentifier;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, v8

    move-object v1, v14

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/theme/ThemeOverlayApplier;->setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;ILjava/util/Set;ZZ)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    const/4 v6, 0x1

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object v0, v8

    move-object v1, v14

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/theme/ThemeOverlayApplier;->setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;ILjava/util/Set;ZZ)V

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v0, v8, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {v14}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/om/OverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    if-eqz v12, :cond_4

    const-string v0, "Executing onComplete runnable"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/systemui/theme/ThemeOverlayApplier;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "setEnabled failed"

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-void
.end method
