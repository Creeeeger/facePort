.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $candidateAppList:[Ljava/util/TreeSet;

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;[Ljava/util/TreeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;->$candidateAppList:[Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;->$candidateAppList:[Ljava/util/TreeSet;

    const-string v2, "$candidateAppList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v4, "key_offline_ai_features"

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SecPreferenceCategory;

    const-string v5, "key_all_ai_features"

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecPreferenceCategory;

    array-length v5, v1

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;

    iget-object v9, v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->supportedMode:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v10, "offline"

    invoke-static {v9, v10, v3}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->offlineAIFeatures:[Ljava/lang/String;

    invoke-virtual {v0, v4, v8, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;->addPreference(Landroidx/preference/SecPreferenceCategory;Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;[Ljava/lang/String;)V

    :cond_2
    iget-object v9, v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->supportedMode:Ljava/lang/String;

    const-string/jumbo v10, "supportedMode"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "online"

    invoke-static {v9, v10, v3}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->offlineAIFeatures:[Ljava/lang/String;

    if-nez v9, :cond_3

    new-array v9, v3, [Ljava/lang/String;

    :cond_3
    iget-object v10, v8, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;->onlineAIFeatures:[Ljava/lang/String;

    if-nez v10, :cond_4

    new-array v10, v3, [Ljava/lang/String;

    :cond_4
    array-length v11, v9

    array-length v12, v10

    add-int v13, v11, v12

    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v3, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v10, Ljava/util/LinkedHashSet;

    array-length v11, v9

    invoke-static {v11}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v10, v9}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection(Ljava/util/Collection;[Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;->addPreference(Landroidx/preference/SecPreferenceCategory;Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppInfo;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    invoke-virtual {p0, v3, v3}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    return-void
.end method
