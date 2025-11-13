.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBestChannel:Landroidx/preference/Preference;

.field public mCategory:[Landroidx/preference/PreferenceCategory;

.field public mCuBarChart24G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

.field public mCuBarChart5G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

.field public mCuBarChart6G:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarChart;

.field public mCuMap:Ljava/util/Map;

.field public mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;


# virtual methods
.method public final setChannelRecommendation()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mRepo:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x971

    const/16 v2, 0x976

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x97b

    const/16 v3, 0x980

    const/16 v4, 0x98a

    const/16 v5, 0x98f

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    const/16 v3, 0x994

    const/16 v4, 0x999

    const/16 v5, 0x9a3

    const/16 v6, 0x9a8

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v9

    invoke-static {v8}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v10

    if-eq v9, v5, :cond_2

    if-eq v9, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne v10, v5, :cond_3

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendableBasedOnAdjacentFreqs([I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v11, 0x6

    if-ne v10, v11, :cond_4

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendableBasedOnAdjacentFreqs([I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 v11, 0xb

    if-ne v10, v11, :cond_0

    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendableBasedOnAdjacentFreqs([I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, " "

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "  - 2.4GHz band: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "  - 5GHz band: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "  None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mBestChannel:Landroidx/preference/Preference;

    if-eqz p0, :cond_a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final setVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mCategory:[Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/ChannelUtilController;->mBestChannel:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method
