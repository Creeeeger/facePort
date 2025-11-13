.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost$2;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost;Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/SecMediaHost$2;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/media/MediaType;

    check-cast p2, Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportPlayLastSong()Z

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayLastSongHelper:Lcom/android/systemui/media/PlayLastSongHelper;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/systemui/media/PlayLastSongHelper;->lastMediaPlayerKey:Ljava/lang/String;

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/media/SecMediaHost;->removePlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaType;)V

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getCurrentPage(Lcom/android/systemui/media/MediaType;)I

    move-result v4

    if-le v4, p0, :cond_2

    invoke-virtual {v3, p0, v2, p1}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/media/SecMediaHost;->updateCapsule(ZLcom/android/systemui/media/SecMediaControlPanel;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/media/SecMediaHost;->updateOAChip(ZLcom/android/systemui/media/SecMediaControlPanel;)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    iget-object p2, p0, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const v4, 0x7f0605c7

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    const/16 v4, 0xb4

    invoke-static {p2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    iput v4, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getCurrentPage(Lcom/android/systemui/media/MediaType;)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    iget-object p1, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    invoke-interface {p1, p2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-le p1, v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$4;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    if-eqz p0, :cond_a

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController$3;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$3;->val$animatorRunner:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/SecMediaHost;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/media/MediaType;

    check-cast p2, Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaPlayerData;

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayerSize$1()I

    move-result v5

    goto :goto_4

    :cond_c
    move v5, v4

    :goto_4
    if-gtz v5, :cond_d

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    :cond_d
    iget-object v6, v0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    check-cast v6, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v6, v5}, Lcom/android/systemui/log/MediaLoggerImpl;->onConfigChanged(I)V

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaHost;->updateResources$2()V

    invoke-virtual {p2}, Landroid/view/View;->invalidateOutline()V

    iget p2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v5, v0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    if-ne v5, p2, :cond_e

    iget-boolean v5, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayerNeedForceUpdate:Z

    if-eqz v5, :cond_12

    :cond_e
    iput p2, v0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    iget-object p2, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/SecMediaPlayerData;

    new-instance v5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;

    const/4 v6, 0x1

    invoke-direct {v5, v0, p1, v6}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/MediaType;I)V

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_10

    move v7, v8

    :cond_10
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v9, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    iget-object v7, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v9, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_12
    :goto_6
    new-instance p2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {v3, p2}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    iget p2, v0, Lcom/android/systemui/media/SecMediaHost;->mIsRTL:I

    const/4 v3, 0x1

    if-eq p2, p0, :cond_13

    iput p0, v0, Lcom/android/systemui/media/SecMediaHost;->mIsRTL:I

    move p0, v3

    goto :goto_7

    :cond_13
    move p0, v4

    :goto_7
    if-eqz p0, :cond_15

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    iget-object v5, p2, Lcom/android/systemui/media/CarouselHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v5}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v5

    iget-object p2, p2, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_14
    new-instance p2, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;

    invoke-direct {p2, p1, v1}, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;-><init>(Lcom/android/systemui/media/MediaType;Lcom/android/systemui/media/ViewPagerHelper;)V

    invoke-virtual {v2, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_15
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eqz p0, :cond_16

    iget p0, v0, Lcom/android/systemui/media/SecMediaHost;->mIsRTL:I

    if-eq p0, v3, :cond_16

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(Lcom/android/systemui/media/MediaType;)I

    move-result p0

    sub-int/2addr p0, v3

    sub-int p2, p0, p2

    :cond_16
    invoke-virtual {v1, p2, v4, p1}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
