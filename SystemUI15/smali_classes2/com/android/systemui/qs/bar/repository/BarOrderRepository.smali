.class public final Lcom/android/systemui/qs/bar/repository/BarOrderRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public barOrder:Ljava/util/List;

.field public collapsedBarRow:I

.field public final context:Landroid/content/Context;

.field public final nonEditableBars:Ljava/util/List;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/tuner/TunerService;Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->tunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    sget-object p1, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;->VIDEOCALL_MICMODE_BAR:Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;->getCls()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;->SECURITY_FOOTER_BAR:Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;

    invoke-virtual {p2}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;->getCls()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;->DATAUSAGE_BAR:Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;

    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository$BarClsName;->getCls()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->nonEditableBars:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->loadCollapsedBarRow()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->loadBarOrder()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDefaultBarOrderList()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1310b9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "defaultBarOrderList result : "

    const-string v1, "BarOrderRepository"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadBarOrder()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->tunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_quick_bar_order"

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BarOrderRepository"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->getDefaultBarOrderList()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v4, v6, v8, v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9, v8}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v6, ""

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "loadBarOrder() result : "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "loadBarOrder() sysui_quick_bar_order is null, load default list"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->getDefaultBarOrderList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v4
.end method

.method public final loadCollapsedBarRow()I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->tunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_quick_bar_collapsed_row"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BarOrderRepository"

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p0, "loadCollapsedBarRow() sysui_quick_bar_collapsed_row is null, load default value"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    :goto_0
    const-string v1, "loadCollapsedBarRow() result : "

    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final setBarOrder(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->tunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_quick_bar_order"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBarOrder user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BarOrderRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final setCollapsedBarRow(I)V
    .locals 4

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->tunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_quick_bar_collapsed_row"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    const-string/jumbo v1, "setCollapsedBarRow user:"

    const-string v2, " result : "

    const-string v3, "BarOrderRepository"

    invoke-static {v0, p1, v1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    :cond_1
    return-void
.end method
