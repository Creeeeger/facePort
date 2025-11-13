.class public final Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;
.super Lcom/android/systemui/qs/FullScreenDetailAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Companion;


# instance fields
.field public callback:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Callback;

.field public fromRect:Landroid/graphics/Rect;

.field public final mediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public mediaOutputView:Lcom/android/systemui/media/MediaOutputView;

.field public final mediaOutputViewProvider:Ljavax/inject/Provider;

.field public final mediaOutputWindowProvider:Ljavax/inject/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->Companion:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/qs/FullScreenDetailAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputViewProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputWindowProvider:Ljavax/inject/Provider;

    new-instance p2, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "com.android.systemui.action.OPEN_MEDIA_OUTPUT"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const-string p1, "MediaOutputDetailAdapter"

    const-string p2, "createDetailView()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputViewProvider:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/android/systemui/media/MediaOutputView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputView:Lcom/android/systemui/media/MediaOutputView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->dismissListPopupWindow()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputView:Lcom/android/systemui/media/MediaOutputView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    if-nez v0, :cond_12

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;-><init>()V

    sget-object v2, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->Companion:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    invoke-virtual {v3, v2}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerData(Lcom/android/systemui/media/MediaType;)Lcom/android/systemui/media/SecMediaPlayerData;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    iget v4, v2, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaPlayerData;->getCurrentMediaData()Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaData;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\t"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaPlayerData;->getCurrentMediaData()Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/lang/Iterable;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v5

    :goto_5
    if-eqz v6, :cond_6

    goto :goto_6

    :cond_8
    move-object v4, v1

    :goto_6
    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-nez v4, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    if-eqz v6, :cond_a

    move v6, v3

    goto :goto_7

    :cond_a
    move v6, v5

    :goto_7
    if-eqz v6, :cond_9

    goto :goto_8

    :cond_b
    move-object v4, v1

    :goto_8
    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-nez v4, :cond_c

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    goto :goto_9

    :cond_c
    move-object p1, v4

    goto :goto_9

    :cond_d
    move-object p1, v1

    :cond_e
    :goto_9
    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    if-nez p1, :cond_10

    :cond_f
    const-string p1, ""

    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    iput-object p1, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p1

    iput v3, p1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    new-instance p1, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$createDetailView$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$createDetailView$1$1;-><init>(Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    iput-object p1, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->dismissCallback:Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->fromRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_11

    const p1, 0x7f0a06dc

    goto :goto_a

    :cond_11
    const p1, 0x7f0a06f2

    :goto_a
    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    iput p1, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->anchorViewId:I

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    iput-object v2, p1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v0

    :cond_12
    iput-object v0, p3, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->fromRect:Landroid/graphics/Rect;

    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public final dismissListPopupWindow()V
    .locals 3

    const-string v0, "MediaOutputDetailAdapter"

    const-string v1, "dismissListPopupWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputView:Lcom/android/systemui/media/MediaOutputView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaOutputView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->mediaOutputView:Lcom/android/systemui/media/MediaOutputView;

    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, -0x50cb2027

    return p0
.end method
