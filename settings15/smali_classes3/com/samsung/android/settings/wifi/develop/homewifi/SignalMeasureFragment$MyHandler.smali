.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$MyHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$MyHandler;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$MyHandler;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scan updated="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HomeWifi.SignalMeasureFragment"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->update(Ljava/util/List;)V

    iget-object p1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mBssidList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mBssidList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mBssidListAdapter:Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mSearchHelper:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v5, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter;)V

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mRssiChartView:Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->addEntry(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mRssiChartView:Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/RssiChart;->isThereWeakArea()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mWeakAreaTextView:Landroid/widget/TextView;

    const-string v0, "Weak signal area has been detected!"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mWeakAreaTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mWeakAreaTextView:Landroid/widget/TextView;

    const/16 v0, 0xed

    const/16 v1, 0x5b

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mProgressView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->startScan()V

    :cond_7
    :goto_2
    return-void
.end method
