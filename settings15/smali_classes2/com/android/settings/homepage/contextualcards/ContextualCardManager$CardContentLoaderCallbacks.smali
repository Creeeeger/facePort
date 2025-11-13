.class public final Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown loader id: "

    invoke-static {p1, p2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    if-eqz p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mStartTime:J

    sub-long/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Total loading time = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ContextualCardManager"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getCardsToKeep(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mIsFirstLaunch:Z

    const/16 v4, 0x67f

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onContextualCardUpdated(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardListLog(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, v4, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getCardLoaderTimeout()J

    move-result-wide v5

    cmp-long p1, v0, v5

    if-gtz p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onContextualCardUpdated(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardListLog(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    long-to-int v7, v0

    const/16 v5, 0x695

    const/16 v6, 0x5de

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mStartTime:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x67e

    long-to-int p1, p1

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->mIsFirstLaunch:Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method
