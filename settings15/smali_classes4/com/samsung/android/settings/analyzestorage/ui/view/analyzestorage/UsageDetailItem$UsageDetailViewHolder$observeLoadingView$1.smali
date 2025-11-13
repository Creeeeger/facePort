.class public final Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

.field public final synthetic this$1:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;->this$1:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iget v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    const-string v3, "<this>"

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;->this$1:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "item"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->clickableTypeSet$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x4

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    iget p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    const/4 v6, 0x3

    if-ne v6, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v4

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v5

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailSize:Landroid/widget/TextView;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->usageDetailClickListener:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->categoryBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_9

    move v1, v5

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->loadingView:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_6
    return-void
.end method
