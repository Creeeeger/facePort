.class public Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;
.super Ljava/lang/Object;
.source "ActivityEmbeddingRulesController.java"


# static fields
.field private static final COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "*"

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    return-void
.end method

.method public static registerSubSettingsPairRule(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "ActivityEmbeddingRulesController#registerSubSettingsPairRule"

    .line 216
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 228
    sget-object v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    const-string v1, "android.intent.action.SAFETY_CENTER"

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 235
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V
    .locals 11

    .line 107
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#registerTwoPanePairRule"

    .line 111
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 115
    new-instance v0, Landroidx/window/embedding/SplitPairFilter;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct {v0, p1, p2, p3}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    new-instance v10, Landroidx/window/embedding/SplitPairRule;

    .line 122
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getMinCurrentScreenSplitWidthPx(Landroid/content/Context;)I

    move-result v6

    .line 123
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getMinSmallestScreenSplitWidthPx(Landroid/content/Context;)I

    move-result v7

    .line 124
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getSplitRatio(Landroid/content/Context;)F

    move-result v8

    const/4 v9, 0x3

    move-object v1, v10

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v1 .. v9}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    .line 118
    invoke-virtual {v0, v10}, Landroidx/window/embedding/SplitController;->registerRule(Landroidx/window/embedding/EmbeddingRule;)V

    .line 127
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7

    .line 195
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#2registerTwoPanePairRuleForSettingsHome"

    .line 199
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 201
    invoke-static/range {v1 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZZ)V

    .line 209
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZZ)V
    .locals 9

    .line 140
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#1registerTwoPanePairRuleForSettingsHome"

    .line 144
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p3, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    if-eqz p4, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 155
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v8

    :goto_2
    if-eqz p4, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    move v5, v8

    :goto_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 166
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 175
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 184
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static unregisterSubSettingsPairRule(Landroid/content/Context;)V
    .locals 8

    const-string v0, "ActivityEmbeddingRulesController#unregisterSubSettingsPairRule"

    .line 367
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 368
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    new-instance p0, Landroidx/window/embedding/SplitPairFilter;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 376
    new-instance v1, Landroidx/window/embedding/SplitPairFilter;

    sget-object v2, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    const-string v3, "android.intent.action.SAFETY_CENTER"

    invoke-direct {v1, v0, v2, v3}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroidx/window/embedding/SplitController;->getSplitRules()Ljava/util/Set;

    move-result-object v2

    .line 382
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/embedding/EmbeddingRule;

    .line 383
    instance-of v4, v3, Landroidx/window/embedding/SplitPairRule;

    if-eqz v4, :cond_1

    .line 384
    check-cast v3, Landroidx/window/embedding/SplitPairRule;

    .line 385
    invoke-virtual {v3}, Landroidx/window/embedding/SplitPairRule;->getFilters()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/window/embedding/SplitPairFilter;

    .line 386
    invoke-virtual {p0, v5}, Landroidx/window/embedding/SplitPairFilter;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "ActivityEmbeddingCtrl"

    if-eqz v6, :cond_3

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregister subSettingsSplitPairFilter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0, v3}, Landroidx/window/embedding/SplitController;->unregisterRule(Landroidx/window/embedding/EmbeddingRule;)V

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {v1, v5}, Landroidx/window/embedding/SplitPairFilter;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregister wildCardSplitPairFilter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0, v3}, Landroidx/window/embedding/SplitController;->unregisterRule(Landroidx/window/embedding/EmbeddingRule;)V

    goto :goto_0

    .line 399
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method
