.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentIndex:I

.field public final indicatorList:Ljava/util/List;

.field public supportedList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->indicatorList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getCurrentSupportedType()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->indicatorList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    instance-of v0, p2, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    const-string/jumbo v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0068

    invoke-virtual {p2, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    :cond_2
    move-object p2, v1

    :cond_3
    if-eqz p2, :cond_a

    iget p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    if-ne p1, p3, :cond_4

    const p3, 0x7f060042

    goto :goto_2

    :cond_4
    const p3, 0x7f060043

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->indicatorList:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    if-le p3, v1, :cond_5

    move p3, v1

    goto :goto_3

    :cond_5
    move p3, v0

    :goto_3
    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    const v0, 0x7f060061

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    if-ne p1, p3, :cond_7

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_7
    const p3, 0x3e4ccccd    # 0.2f

    :goto_5
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_8
    iget p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    if-ne p1, p3, :cond_9

    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    const v0, 0x7f142a95

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_9
    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    const v0, 0x7f141a58

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_6
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->context:Landroid/content/Context;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f140407

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    return-object p2
.end method
