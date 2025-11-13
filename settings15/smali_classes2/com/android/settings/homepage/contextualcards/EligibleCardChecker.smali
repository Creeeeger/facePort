.class public final Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 4

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    new-instance v0, Landroidx/slice/SliceViewManagerWrapper;

    invoke-direct {v0, p0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, p0}, Landroidx/slice/SliceViewManagerWrapper;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v2, v0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p1, v2}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v1

    iget-object v2, v0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda1;-><init>(Landroidx/slice/SliceViewManagerWrapper;Landroid/net/Uri;Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda0;I)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public final call()Ljava/lang/Object;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v8, v3, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v5, 0x696

    const/16 v6, 0x5de

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v8, v3, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v7, v3

    const/16 v6, 0x5de

    const/4 v4, 0x0

    const/16 v5, 0x694

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-object v9

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 5

    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v2, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v4, "error"

    invoke-static {v4, v3}, Landroidx/slice/ArrayUtils;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-object v2, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, v2}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isSliceToggleable(Landroidx/slice/Slice;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mHasInlineAction:Z

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    :cond_3
    return v1

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to bind slice, not eligible for display "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EligibleCardChecker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSliceToggleable(Landroidx/slice/Slice;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/core/SliceAction;

    invoke-interface {v1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/slice/SliceMetadata;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
