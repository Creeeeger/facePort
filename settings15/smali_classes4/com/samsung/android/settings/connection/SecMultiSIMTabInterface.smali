.class public interface abstract Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v4}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getEnabledSimCnt()I

    move-result v4

    :goto_0
    if-le v4, v5, :cond_11

    const v6, 0x7f0d090d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a091b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a0e5d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    new-instance v6, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;-><init>(Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;)V

    invoke-virtual {v1, v6}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    move v6, v8

    :goto_1
    if-ge v6, v4, :cond_10

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v7

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony.euicc.mep"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    move v11, v5

    move/from16 v18, v11

    move v5, v8

    goto/16 :goto_7

    :cond_1
    const-string/jumbo v10, "phone"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, -0x1

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/UiccCardInfo;

    invoke-virtual {v14}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v14}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v5}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v8

    invoke-static {v0, v8}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSubId(Landroid/content/Context;I)I

    move-result v8

    if-ne v8, v15, :cond_4

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const-class v15, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v15, v8}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result v8

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_6

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v15, -0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_8

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/16 v18, 0x1

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x0

    const/4 v8, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    const-string v10, "SecSimFeatureProvider"

    if-eq v5, v8, :cond_b

    const-string v8, "isLogicalSlotOrdered, pSIM1 enabled [LogicalSlotId : "

    const-string v11, "]"

    invoke-static {v5, v8, v11, v10}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    move/from16 v18, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSubId(Landroid/content/Context;I)I

    move-result v8

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSubId(Landroid/content/Context;I)I

    move-result v12

    const-string v13, "isLogicalSlotOrdered, subId1 : "

    const-string v14, ", subId2 : "

    invoke-static {v13, v14, v8, v12, v10}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-ge v8, v12, :cond_c

    move v8, v11

    goto :goto_6

    :cond_c
    move v8, v5

    :goto_6
    move/from16 v18, v8

    :goto_7
    if-eqz v18, :cond_d

    move v8, v6

    goto :goto_8

    :cond_d
    xor-int/lit8 v8, v6, 0x1

    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "-th tab slot index = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "SecMultiSIMTabInterface"

    invoke-static {v12, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_e

    move v8, v11

    goto :goto_9

    :cond_e
    move v8, v5

    :goto_9
    invoke-virtual {v1, v7, v8}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070d26

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/google/android/material/tabs/TabLayout;->mIconTextGap:I

    iget-object v7, v1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_a
    if-ge v8, v7, :cond_f

    iget-object v9, v1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v9}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move v8, v5

    move v5, v11

    goto/16 :goto_1

    :cond_10
    return-object v3

    :cond_11
    return-object v1

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
.end method
