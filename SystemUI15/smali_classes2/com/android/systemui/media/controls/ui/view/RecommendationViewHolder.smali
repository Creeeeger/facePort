.class public final Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

.field public static final backgroundId:I

.field public static final controlsIds:Ljava/util/Set;

.field public static final mediaContainersIds:Ljava/util/Set;

.field public static final mediaTitlesAndSubtitlesIds:Ljava/util/Set;


# instance fields
.field public final cardTitle:Landroid/widget/TextView;

.field public final gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

.field public final mediaAppIcons:Ljava/util/List;

.field public final mediaCoverContainers:Ljava/util/List;

.field public final mediaCoverItems:Ljava/util/List;

.field public final mediaProgressBars:Ljava/util/List;

.field public final mediaSubtitles:Ljava/util/List;

.field public final mediaTitles:Ljava/util/List;

.field public final recommendations:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

    const v0, 0x7f0a06e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, 0x7f0a06cc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f0a06cd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f0a06ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v3, 0x7f0a06cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v3, 0x7f0a06f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v3, 0x7f0a06ed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    filled-new-array {v10, v11}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaTitlesAndSubtitlesIds:Ljava/util/Set;

    filled-new-array {v0, v8, v9}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaContainersIds:Ljava/util/Set;

    const v0, 0x7f0a0b70

    sput v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->backgroundId:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    const v0, 0x7f0a06e4

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/ViewGroup;

    const v1, 0x7f0a06cd

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0a06ce

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f0a06cf

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a06e3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/CachingIconView;

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a06f2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a06ed

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a06df

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a06cc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->mediaCoverContainers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancel:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
