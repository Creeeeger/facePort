.class public Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mDefaultNames:Ljava/util/HashSet;

.field public static final mSecurityOrder:Ljava/util/HashMap;


# instance fields
.field public mBssids:Ljava/util/ArrayList;

.field public mExcellent:Landroid/view/View;

.field public mHiddenNetwork:Landroid/view/View;

.field public mMultipleName:Landroid/view/View;

.field public mMultipleSecurity:Landroid/view/View;

.field public mNoWifi:Landroid/view/View;

.field public mProgressDecorator:Lcom/samsung/android/settings/wifi/develop/homewifi/ProgressDecorator;

.field public mStrongSecurity:Landroid/view/View;

.field public mUniqueName:Landroid/view/View;

.field public mWMM:Landroid/view/View;

.field public mWithProblemImageView:Landroid/view/View;

.field public mWithoutProblemImageView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    const-string v9, "2wire"

    const-string v10, "default"

    const-string v1, "iptime"

    const-string v2, "kt wifi"

    const-string v3, "linksys"

    const-string v4, "netgear"

    const-string v5, "asus"

    const-string/jumbo v6, "tp-link"

    const-string/jumbo v7, "wireless"

    const-string v8, "dlink"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mSecurityOrder:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "onCreateView"

    const-string v2, "HomeWifi.AdviserFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d0a5f

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a0a8e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mNoWifi:Landroid/view/View;

    const v3, 0x7f0a0f23

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mStrongSecurity:Landroid/view/View;

    const v3, 0x7f0a0748

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mHiddenNetwork:Landroid/view/View;

    const v3, 0x7f0a10b2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mUniqueName:Landroid/view/View;

    const v3, 0x7f0a0a10

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleName:Landroid/view/View;

    const v3, 0x7f0a0a14

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleSecurity:Landroid/view/View;

    const v3, 0x7f0a11bd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWMM:Landroid/view/View;

    const v3, 0x7f0a05e7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mExcellent:Landroid/view/View;

    const v3, 0x7f0a07d6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWithProblemImageView:Landroid/view/View;

    const v3, 0x7f0a07d7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWithoutProblemImageView:Landroid/view/View;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mNoWifi:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mStrongSecurity:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mHiddenNetwork:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mUniqueName:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleName:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleSecurity:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWMM:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mExcellent:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mSecurityOrder:Ljava/util/HashMap;

    const/4 v5, 0x0

    const-string v6, "EAP_SUITE_B_192"

    const/4 v7, 0x1

    const-string v8, "EAP-FILS-SHA384"

    invoke-static {v5, v3, v6, v7, v8}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x2

    const-string v8, "EAP-FILS-SHA256"

    const/4 v9, 0x3

    const-string v10, "FT/EAP"

    invoke-static {v6, v3, v8, v9, v10}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v8, 0x4

    const-string v9, "DPP"

    const/4 v10, 0x5

    const-string v11, "FT/SAE_EXT_KEY"

    invoke-static {v8, v3, v9, v10, v11}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v9, 0x6

    const-string v11, "SAE_EXT_KEY"

    const/4 v12, 0x7

    const-string v13, "FT/SAE"

    invoke-static {v9, v3, v11, v12, v13}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string v9, "SAE"

    const/16 v11, 0x9

    const-string v12, "FT/PSK"

    invoke-static {v4, v3, v9, v11, v12}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0xa

    const-string v11, "EAP/SHA256"

    const/16 v12, 0xb

    const-string v13, "PSK-SHA256"

    invoke-static {v9, v3, v11, v12, v13}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0xc

    const-string v11, "EAP/SHA1"

    const/16 v12, 0xd

    const-string v13, "PSK"

    invoke-static {v9, v3, v11, v12, v13}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0xe

    const-string v11, "WEP"

    const/16 v12, 0xf

    const-string v13, "OSEN"

    invoke-static {v9, v3, v11, v12, v13}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x10

    const-string v11, "OWE_TRANSITION"

    const/16 v12, 0x11

    const-string v13, "OWE"

    invoke-static {v9, v3, v11, v12, v13}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "OPEN"

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v7

    goto/16 :goto_1a

    :cond_1
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda3;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v3}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda3;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;

    const/4 v11, 0x3

    invoke-direct {v10, v11, v9}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/StringBuilder;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mStrongSecurity:Landroid/view/View;

    const v10, 0x7f0a0f24

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v10, "Following Wi-Fi routers have a weak security."

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mStrongSecurity:Landroid/view/View;

    const v10, 0x7f0a0f25

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mStrongSecurity:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    move v3, v7

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    if-lez v3, :cond_4

    move v9, v7

    goto :goto_1

    :cond_4
    move v9, v5

    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    new-instance v12, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda3;

    const/4 v13, 0x1

    invoke-direct {v12, v13, v10}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda3;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;

    const/4 v13, 0x4

    invoke-direct {v12, v13, v11}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/StringBuilder;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v7, :cond_5

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mUniqueName:Landroid/view/View;

    const v12, 0x7f0a10b3

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v12, "Following Wi-Fi routers use a default name."

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mUniqueName:Landroid/view/View;

    const v12, 0x7f0a10b5

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mUniqueName:Landroid/view/View;

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mUniqueName:Landroid/view/View;

    const v11, 0x7f0a10b4

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_2

    :cond_6
    move v9, v4

    :goto_2
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    move v9, v7

    goto :goto_3

    :cond_7
    move v9, v5

    :goto_3
    add-int/2addr v3, v9

    if-lez v3, :cond_8

    move v9, v7

    goto :goto_4

    :cond_8
    move v9, v5

    :goto_4
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    new-instance v12, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda0;

    const/4 v13, 0x1

    invoke-direct {v12, v13, v10}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v12, v5

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_a

    :cond_9
    move v4, v7

    move-object/from16 v22, v10

    goto/16 :goto_e

    :cond_a
    add-int/lit8 v15, v12, 0x1

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v15, v6, :cond_9

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    if-nez v16, :cond_c

    :cond_b
    move-object/from16 v22, v10

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v18, v5

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    iget-object v5, v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v21, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_d

    move-object/from16 v22, v10

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 v22, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_f

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move-object/from16 v23, v5

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v10, v5, :cond_e

    add-int/lit8 v8, v8, 0x1

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v23

    goto :goto_9

    :cond_f
    const/4 v4, 0x1

    :goto_a
    if-ne v8, v4, :cond_10

    const/16 v18, 0x1

    goto :goto_b

    :cond_10
    move v7, v4

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    const/16 v4, 0x8

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    move-object/from16 v22, v10

    :goto_b
    if-eqz v18, :cond_12

    goto :goto_c

    :cond_12
    move-object/from16 v10, v22

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    goto :goto_7

    :cond_13
    move-object/from16 v22, v10

    :goto_c
    if-eqz v18, :cond_14

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, -0x1

    const-string v4, "checkMultipleNames: Remove "

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_d
    const/4 v4, 0x1

    add-int/2addr v15, v4

    move v7, v4

    move-object/from16 v10, v22

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x4

    goto/16 :goto_6

    :goto_e
    add-int/lit8 v12, v12, 0x1

    move v7, v4

    move-object/from16 v10, v22

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x4

    goto/16 :goto_5

    :cond_15
    move v4, v7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/StringBuilder;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleName:Landroid/view/View;

    const v5, 0x7f0a0a12

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleName:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleName:Landroid/view/View;

    const v4, 0x7f0a0a11

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v9, :cond_16

    const/4 v4, 0x0

    goto :goto_f

    :cond_16
    const/16 v4, 0x8

    :goto_f
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    goto :goto_10

    :cond_17
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v3, v2

    if-lez v3, :cond_18

    const/4 v2, 0x1

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    :goto_11
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0, v4}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda8;

    invoke-direct {v6, v5}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda8;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleSecurity:Landroid/view/View;

    const v6, 0x7f0a0a15

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "Following Wi-Fi routers uses multiple different securities."

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleSecurity:Landroid/view/View;

    const v6, 0x7f0a0a17

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleSecurity:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mMultipleSecurity:Landroid/view/View;

    const v5, 0x7f0a0a16

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_12

    :cond_1a
    const/16 v2, 0x8

    :goto_12
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v3, v2

    if-lez v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_14

    :cond_1c
    const/4 v2, 0x0

    :goto_14
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mBssids:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/StringBuilder;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-le v4, v7, :cond_1d

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWMM:Landroid/view/View;

    const v6, 0x7f0a11be

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "WMM is disabled in the following Wi-Fi routers."

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWMM:Landroid/view/View;

    const v6, 0x7f0a11c0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWMM:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWMM:Landroid/view/View;

    const v5, 0x7f0a11bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    const/16 v2, 0x8

    :goto_15
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    goto :goto_16

    :cond_1f
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v3, v2

    if-nez v3, :cond_20

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mExcellent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    :cond_20
    const/4 v4, 0x0

    :goto_17
    if-nez v3, :cond_21

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWithProblemImageView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWithoutProblemImageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    :cond_21
    const/16 v5, 0x8

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWithProblemImageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mWithoutProblemImageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_18
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mProgressDecorator:Lcom/samsung/android/settings/wifi/develop/homewifi/ProgressDecorator;

    if-eqz v0, :cond_23

    if-nez v3, :cond_22

    const/4 v6, 0x2

    goto :goto_19

    :cond_22
    const/4 v6, 0x4

    :goto_19
    check-cast v0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setProgressAnimation(II)V

    goto :goto_1b

    :goto_1a
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mNoWifi:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mProgressDecorator:Lcom/samsung/android/settings/wifi/develop/homewifi/ProgressDecorator;

    if-eqz v3, :cond_23

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    invoke-virtual {v3, v2, v10}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->setProgressAnimation(II)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mProgressDecorator:Lcom/samsung/android/settings/wifi/develop/homewifi/ProgressDecorator;

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mTitleView:Landroid/widget/TextView;

    const-string v2, "No Wi-Fi selected"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_1b
    return-object v1
.end method
