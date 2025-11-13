.class public final Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $type:Lcom/android/systemui/media/MediaType;

.field public final synthetic this$0:Lcom/android/systemui/media/ViewPagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaType;Lcom/android/systemui/media/ViewPagerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    iput-object p2, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    sget v0, Lcom/android/systemui/media/ViewPagerHelper;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    iget-object v1, v0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1$getItemPosition$1;->INSTANCE:Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1$getItemPosition$1;

    new-instance v3, Lkotlin/sequences/TransformingIndexedSequence;

    invoke-direct {v3, v2, v1}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;

    invoke-direct {v1, v3}, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingIndexedSequence;)V

    :cond_0
    iget-object v2, v1, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget v1, Lcom/android/systemui/media/ViewPagerHelper;->$r8$clinit:I

    iget-object v1, v0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    move-result p0

    sub-int/2addr p0, v2

    sub-int p1, p0, p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    :cond_3
    :goto_1
    return p1
.end method

.method public final instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 5

    sget v0, Lcom/android/systemui/media/ViewPagerHelper;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    iget-object v1, v0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    move-result v1

    sub-int/2addr v1, v3

    sub-int p1, v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "- instantiateItem - parent: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", container: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ViewPagerHelper"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eq v1, p2, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz v0, :cond_2

    :cond_4
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;

    throw v3
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
