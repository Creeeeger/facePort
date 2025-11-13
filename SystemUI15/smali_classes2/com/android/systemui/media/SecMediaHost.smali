.class public final Lcom/android/systemui/media/SecMediaHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBarState:I

.field public final mBgColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public mBudsDetailCloseRunnable:Ljava/lang/Runnable;

.field public mBudsDetailOpenRunnable:Ljava/lang/Runnable;

.field public mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

.field public final mContext:Landroid/content/Context;

.field public mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

.field public mIsRTL:I

.field public mLocalListening:Z

.field public final mLogger:Lcom/android/systemui/log/MediaLogger;

.field public mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

.field public final mMediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

.field public final mMediaControlPanelProvider:Ljavax/inject/Provider;

.field public final mMediaDataListener:Lcom/android/systemui/media/SecMediaHost$2;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mMediaFrames:Ljava/util/HashMap;

.field public final mMediaPlayerData:Ljava/util/HashMap;

.field public final mMediaPlayerDataProvider:Ljavax/inject/Provider;

.field public mOrientation:I

.field public mPagerMargin:I

.field public mPlayLastSongHelper:Lcom/android/systemui/media/PlayLastSongHelper;

.field public mPlayerNeedForceUpdate:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

.field public final mVisibilityListeners:Ljava/util/ArrayList;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaBluetoothHelper;Lcom/android/systemui/log/MediaLogger;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/media/MediaBluetoothHelper;",
            "Lcom/android/systemui/log/MediaLogger;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/qs/bar/ColoredBGHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerNeedForceUpdate:Z

    new-instance v1, Lcom/android/systemui/media/SecMediaHost$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecMediaHost$2;-><init>(Lcom/android/systemui/media/SecMediaHost;)V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataListener:Lcom/android/systemui/media/SecMediaHost$2;

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    iput-object p7, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaBluetoothHelper:Lcom/android/systemui/media/MediaBluetoothHelper;

    iput-object p6, p0, Lcom/android/systemui/media/SecMediaHost;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p6, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iput-object p5, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerDataProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/media/SecMediaHost;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p10, p0, Lcom/android/systemui/media/SecMediaHost;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p1, Lcom/android/systemui/media/ViewPagerHelper;

    new-instance p5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaHost;)V

    new-instance p6, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;

    const/4 p7, 0x1

    invoke-direct {p6, p0, p7}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    new-instance p7, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    const/4 p8, 0x1

    invoke-direct {p7, p0, p8}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    new-instance p8, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;

    invoke-direct {p8, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;-><init>(Ljava/util/HashMap;)V

    invoke-direct {p1, p5, p6, p7, p8}, Lcom/android/systemui/media/ViewPagerHelper;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaControlPanelProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {p2, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    iput-object p11, p0, Lcom/android/systemui/media/SecMediaHost;->mBgColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaHost;->updateResources$2()V

    return-void
.end method

.method public static iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final addMediaFrame(Lcom/android/systemui/media/MediaType;Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d038e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerDataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportClick()Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_1

    move-object v2, v10

    check-cast v2, Lcom/android/systemui/media/CustomViewPager;

    iput-boolean v11, v2, Lcom/android/systemui/media/CustomViewPager;->touchable:Z

    :cond_1
    new-instance v2, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;-><init>(Lcom/android/systemui/media/MediaType;Lcom/android/systemui/media/ViewPagerHelper;)V

    invoke-virtual {v10, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/media/CarouselHelper;

    iget v4, p0, Lcom/android/systemui/media/SecMediaHost;->mPagerMargin:I

    new-instance v5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    new-instance v6, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaHost;)V

    new-instance v7, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;

    invoke-direct {v8, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda4;-><init>(Ljava/util/HashMap;)V

    move-object v2, v0

    move-object v3, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/media/CarouselHelper;-><init>(Landroid/view/View;ILjava/util/function/Supplier;Ljava/util/function/BiFunction;Ljava/util/function/IntSupplier;Ljava/util/function/Function;Lcom/android/systemui/media/MediaType;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/media/CoverMusicWidgetController;

    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    new-instance v3, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    iget-object v4, p0, Lcom/android/systemui/media/SecMediaHost;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v5, p0, Lcom/android/systemui/media/SecMediaHost;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/media/CoverMusicWidgetController;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    const-string v2, "CoverMusicWidgetController"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    iget-object v2, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->addVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iget-object v3, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    iget-object v0, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportPlayLastSong()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/media/PlayLastSongHelper;

    iget-object v4, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    new-instance v6, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v2, 0x4

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    iget-object v7, p0, Lcom/android/systemui/media/SecMediaHost;->mBgColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/media/PlayLastSongHelper;-><init>(Landroid/view/View;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayLastSongHelper:Lcom/android/systemui/media/PlayLastSongHelper;

    iget-object v2, v0, Lcom/android/systemui/media/PlayLastSongHelper;->addVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iget-object v3, v0, Lcom/android/systemui/media/PlayLastSongHelper;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayLastSongHelper;->updateRestartViewVisibility()V

    iget-object v2, v0, Lcom/android/systemui/media/PlayLastSongHelper;->soundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v0, v0, Lcom/android/systemui/media/PlayLastSongHelper;->onMediaKeyEventSessionChangeListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v2, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->addOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {v11, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/systemui/media/SecMediaHost;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/MediaType;)V

    :cond_6
    return-void
.end method

.method public final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/MediaType;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget v6, v0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v5, :cond_0

    goto :goto_0

    :cond_0
    iput v5, v0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    iput-boolean v7, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayerNeedForceUpdate:Z

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-object v8, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/SecMediaPlayerData;

    if-nez v8, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(Lcom/android/systemui/media/MediaType;)I

    move-result v9

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/SecMediaControlPanel;

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/SecMediaControlPanel;

    if-eqz v2, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v10

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/SecMediaControlPanel;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    if-nez v2, :cond_12

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaControlPanelProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object v4, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    new-instance v12, Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v13, v0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13, v6, v10, v4}, Lcom/android/systemui/media/SecPlayerViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/android/systemui/media/MediaType;)V

    iput-object v12, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    new-instance v6, Lcom/android/systemui/media/SecSeekBarObserver;

    invoke-direct {v6, v12}, Lcom/android/systemui/media/SecSeekBarObserver;-><init>(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    iput-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    iget-object v13, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-object v14, v13, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v14, v6}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v6, v12, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    const/4 v12, 0x0

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v12

    :goto_1
    new-instance v14, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;

    invoke-direct {v14, v13}, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    invoke-virtual {v6, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v14, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;

    invoke-direct {v14, v13, v6}, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/widget/SeekBar;)V

    invoke-virtual {v6, v14}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v14, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v14, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Lcom/android/systemui/media/SecMediaControlPanel$1;

    iget-object v15, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v15, v6, v14}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportColorSchemeTransition()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-object v14, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v15, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-direct {v6, v14, v15}, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;)V

    iput-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    :cond_5
    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/android/systemui/media/CoverMusicCapsuleController;

    iget-object v14, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    invoke-direct {v15, v2, v7}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;I)V

    iget-object v7, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {v6, v14, v7, v15}, Lcom/android/systemui/media/CoverMusicCapsuleController;-><init>(Landroid/content/Context;Lcom/android/systemui/subscreen/SubScreenManager;Ljava/util/function/BooleanSupplier;)V

    iput-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    iput-object v6, v13, Lcom/android/systemui/media/SecSeekBarViewModel;->coverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    :cond_6
    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/android/systemui/media/OAMusicChipController;

    iget-object v7, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

    const/4 v15, 0x1

    invoke-direct {v14, v2, v15}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;I)V

    iget-object v15, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {v6, v7, v15, v14}, Lcom/android/systemui/media/OAMusicChipController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Ljava/util/function/BooleanSupplier;)V

    iput-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mOAMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    iput-object v6, v13, Lcom/android/systemui/media/SecSeekBarViewModel;->oaMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    :cond_7
    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mObserver:Lcom/android/systemui/media/SecMediaControlPanel$3;

    iget-object v7, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v7, v6}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_8
    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    sget-object v7, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    if-ne v6, v7, :cond_9

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mediaOngoingActivityObserver:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mOngoingActivityObserver:Lcom/android/systemui/media/SecMediaControlPanel$2;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportRecoilAnimation()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v6, v6, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    move-object v6, v12

    :goto_2
    iget-object v7, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilLargeAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_b
    iget-object v6, v0, Lcom/android/systemui/media/SecMediaHost;->mBudsDetailOpenRunnable:Ljava/lang/Runnable;

    iget-object v7, v0, Lcom/android/systemui/media/SecMediaHost;->mBudsDetailCloseRunnable:Ljava/lang/Runnable;

    iget-object v13, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v13}, Lcom/android/systemui/media/MediaType;->getSupportBudsButton()Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_3

    :cond_c
    iget-object v13, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v13, v13, Lcom/android/systemui/media/SecPlayerViewHolder;->budsButtonExpanded:Landroid/widget/ImageButton;

    if-eqz v13, :cond_d

    move-object v12, v13

    :cond_d
    iput-object v12, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    iput-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsDetailOpenRunnable:Ljava/lang/Runnable;

    iput-object v7, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsDetailCloseRunnable:Ljava/lang/Runnable;

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda4;

    invoke-direct {v7, v2}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mBudsButtonExpanded:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v7, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;

    const/4 v12, 0x0

    invoke-direct {v7, v2, v12}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaControlPanel;->updateBudsButton()V

    :goto_3
    new-instance v6, Lcom/android/systemui/media/SecMediaHost$1;

    invoke-direct {v6, v0, v8}, Lcom/android/systemui/media/SecMediaHost$1;-><init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/SecMediaPlayerData;)V

    iput-object v1, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaHost$1;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying$1()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_f
    iget-object v3, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_10
    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v10

    :goto_5
    invoke-virtual {v5, v4}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_11
    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying$1()Z

    move-result v3

    check-cast v11, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v11, v1, v3}, Lcom/android/systemui/log/MediaLoggerImpl;->addPlayer(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_12
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iput-object v1, v2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    :cond_13
    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying$1()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaControlPanel;

    if-eq v3, v2, :cond_14

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    goto :goto_6

    :cond_14
    move v7, v10

    :goto_6
    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying$1()Z

    move-result v3

    check-cast v11, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v11, v1, v3}, Lcom/android/systemui/log/MediaLoggerImpl;->updatePlayer(Ljava/lang/String;Z)V

    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v7, v2}, Lcom/android/systemui/media/SecMediaHost;->updateCapsule(ZLcom/android/systemui/media/SecMediaControlPanel;)V

    :cond_15
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v7, v2}, Lcom/android/systemui/media/SecMediaHost;->updateOAChip(ZLcom/android/systemui/media/SecMediaControlPanel;)V

    :cond_16
    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v4}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_17
    if-lez v1, :cond_18

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    :cond_18
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0, v4}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(Lcom/android/systemui/media/MediaType;)I

    move-result v2

    if-eq v9, v2, :cond_19

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    invoke-virtual {v0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    :cond_19
    invoke-virtual {v5, v4}, Lcom/android/systemui/media/ViewPagerHelper;->getCurrentPage(Lcom/android/systemui/media/MediaType;)I

    move-result v0

    if-nez v7, :cond_1a

    if-nez v0, :cond_1b

    :cond_1a
    invoke-virtual {v5, v10, v10, v4}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    :cond_1b
    invoke-virtual {v8}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayerSize$1()I

    move-result v0

    if-eq v0, v1, :cond_1c

    const-string v0, "SecMediaHost"

    const-string v1, "Size of players and number of views in carousel are out of sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public final getMediaPlayerData(Lcom/android/systemui/media/MediaType;)Lcom/android/systemui/media/SecMediaPlayerData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    return-object p0
.end method

.method public final getMediaPlayerNum(Lcom/android/systemui/media/MediaType;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/SecMediaHost;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final onMediaVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/SecMediaHost;->mBarState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/SecMediaHost;->mBarState:I

    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final removeMediaFrame(Lcom/android/systemui/media/MediaType;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/MediaType;I)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    if-eqz v0, :cond_1

    const-string v2, "CoverMusicWidgetController"

    const-string v3, "destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iget-object v3, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    iget-object v2, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    iget-object v0, v0, Lcom/android/systemui/media/CoverMusicWidgetController;->lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportPlayLastSong()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayLastSongHelper:Lcom/android/systemui/media/PlayLastSongHelper;

    iget-object v2, v0, Lcom/android/systemui/media/PlayLastSongHelper;->soundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v3, v0, Lcom/android/systemui/media/PlayLastSongHelper;->onMediaKeyEventSessionChangeListener$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->removeOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V

    iget-object v2, v0, Lcom/android/systemui/media/PlayLastSongHelper;->removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/systemui/media/PlayLastSongHelper;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayLastSongHelper:Lcom/android/systemui/media/PlayLastSongHelper;

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removePlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaType;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    if-nez v1, :cond_1

    check-cast v2, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/log/MediaLoggerImpl;->removePlayerError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaControlPanel;->onDestroy()V

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    :cond_3
    check-cast v2, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/log/MediaLoggerImpl;->removePlayer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setListening(ZLcom/android/systemui/media/MediaType;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(Lcom/android/systemui/media/MediaType;)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/SecMediaPlayerData;

    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-static {p1, v2}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-virtual {p1, v0, v0, p2}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    return-void
.end method

.method public final updateCapsule(ZLcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 2

    const-string v0, "Change Cover Played State : "

    const-string v1, "SecMediaHost"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    sget-object p1, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    new-instance p1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0, p1}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    iget-object p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    :cond_1
    :goto_0
    iget-boolean p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    if-eqz p0, :cond_3

    iget-object p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    if-eqz p0, :cond_3

    iget-object p1, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateEqualizerState(Landroid/media/session/PlaybackState;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/MediaType;)V
    .locals 9

    iget-object v0, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    move-object v5, v0

    iget-boolean v6, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    const-string v0, "  "

    const/16 v8, 0x8

    invoke-static {v8, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/MediaLoggerImpl;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/log/MediaLoggerImpl;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v2, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaDataListener:Lcom/android/systemui/media/SecMediaHost$2;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/media/SecMediaHost$2;->onMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/SecMediaHost;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/MediaType;)V

    :goto_0
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    iget-object v0, p1, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    invoke-interface {v0, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le v0, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v8

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    iget-object v0, p1, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0605c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iget-object p1, p1, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    iput v0, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    iput v1, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    :cond_5
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaType;->getSupportWidgetTimer()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    if-eqz p1, :cond_8

    iget-object p3, p0, Lcom/android/systemui/media/SecMediaHost;->mWidgetController:Lcom/android/systemui/media/CoverMusicWidgetController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p4, p3, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    const-string v0, "CoverMusicWidgetController"

    if-eqz p1, :cond_6

    const-string p1, "callback has been removed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p2}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p3, Lcom/android/systemui/media/CoverMusicWidgetController;->pauseTimerStartedTime:J

    const/4 p1, 0x0

    invoke-virtual {p4, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    iget-object p1, p3, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    invoke-virtual {p4, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "callback has been added"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/systemui/media/CoverMusicWidgetController;->pauseTimerStartedTime:J

    const-wide/32 p2, 0x1d4c0

    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    const-string p1, "is not playing but already has callback"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$4;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    if-eqz p0, :cond_b

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController$3;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$3;->val$animatorRunner:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_b
    :goto_4
    return-void
.end method

.method public final updateOAChip(ZLcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 2

    const-string v0, "Change OA Played State : "

    const-string v1, "SecMediaHost"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    sget-object p1, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    new-instance p1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0, p1}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    iget-object p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportOAChip()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    :cond_1
    :goto_0
    iget-boolean p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerOAPlayed:Z

    if-eqz p0, :cond_3

    iget-object p0, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mOAMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    if-eqz p0, :cond_3

    iget-object p1, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/OAMusicChipController;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateResources$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0710c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaHost;->mPagerMargin:I

    return-void
.end method
