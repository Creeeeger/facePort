.class public final Lcom/android/systemui/controls/ui/util/SpanManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public maxSpan:I

.field public final spanInfos:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/util/SpanManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SpanManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    return-void
.end method


# virtual methods
.method public final updateSpanInfos(I)V
    .locals 11

    const-string/jumbo v0, "updateSpanInfos layoutWidth = "

    const-string v1, "SpanManager"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v4, v4, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    if-lez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v3, v3, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    iget-object v4, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    if-lez p1, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    invoke-virtual {v4, p1, v3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getAvailableSpanCount(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget-object v5, v4, Lcom/android/systemui/controls/ui/util/LayoutUtil;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAvailableSpanCount context.config = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LayoutUtil"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/systemui/controls/ui/util/LayoutUtil;->context:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Insets;->right:I

    iget v8, v6, Landroid/graphics/Insets;->left:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Insets;->top:I

    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v8, v6

    new-instance v6, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-direct {v6, v9, v5}, Landroid/util/Size;-><init>(II)V

    iget-object v5, v4, Lcom/android/systemui/controls/ui/util/LayoutUtil;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0043

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getWidthPercentBasic(F)F

    move-result v5

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getAvailableSpanCount(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v3, v3, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    if-lez v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v2, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    mul-int v3, v0, v2

    :goto_4
    move v10, v2

    move v2, v0

    move v0, v10

    if-nez v0, :cond_6

    div-int v0, v3, v2

    goto :goto_3

    :cond_6
    rem-int/2addr v2, v0

    goto :goto_4

    :cond_7
    iput v0, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    iget-object p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v3, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v0, v0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    div-int/2addr v3, v0

    iput v3, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    goto :goto_5

    :cond_8
    iget p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    const-string/jumbo v0, "updateSpanInfos maxSpan = "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v2, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget p1, p1, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateSpanInfos ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] span = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_6

    :cond_9
    return-void
.end method
