.class public final Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRuleController:Landroidx/window/embedding/RuleController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "*"

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/window/embedding/RuleController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mRuleController:Landroidx/window/embedding/RuleController;

    return-void
.end method

.method public static registerSubSettingsPairRule(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "ActivityEmbeddingRulesController#registerSubSettingsPairRule"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "feature_is_embedding_activity_enabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    const-string v1, "android.intent.action.SAFETY_CENTER"

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "feature_is_embedding_activity_enabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#registerTwoPanePairRule"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Landroidx/window/embedding/SplitPairFilter;

    invoke-direct {v1, p1, p2, p3}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {p1}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    sget-boolean p2, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070296

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    invoke-static {p2}, Landroidx/window/embedding/SplitAttributes$SplitType;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p1

    sget-object p2, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p1, p2}, Landroidx/window/embedding/SplitAttributes$Builder;->setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object p1

    new-instance p2, Landroidx/window/embedding/SplitPairRule$Builder;

    invoke-direct {p2, v0}, Landroidx/window/embedding/SplitPairRule$Builder;-><init>(Ljava/util/Set;)V

    invoke-virtual {p2, p4}, Landroidx/window/embedding/SplitPairRule$Builder;->setFinishPrimaryWithSecondary(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroidx/window/embedding/SplitPairRule$Builder;->setFinishSecondaryWithPrimary(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroidx/window/embedding/SplitPairRule$Builder;->setClearTop(Z)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b000c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/window/embedding/SplitPairRule$Builder;->setMinWidthDp(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b000d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/window/embedding/SplitPairRule$Builder;->setMinSmallestWidthDp(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p2

    sget-object p3, Landroidx/window/embedding/EmbeddingAspectRatio;->ALWAYS_ALLOW:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {p2, p3}, Landroidx/window/embedding/SplitPairRule$Builder;->setMaxAspectRatioInPortrait(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/window/embedding/SplitPairRule$Builder;->setDefaultSplitAttributes(Landroidx/window/embedding/SplitAttributes;)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/embedding/SplitPairRule$Builder;->build()Landroidx/window/embedding/SplitPairRule;

    move-result-object p1

    invoke-static {p0}, Landroidx/window/embedding/RuleController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/window/embedding/RuleController;->addRule(Landroidx/window/embedding/EmbeddingRule;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "feature_is_embedding_activity_enabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#2registerTwoPanePairRuleForSettingsHome"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public static registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "feature_is_embedding_activity_enabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#1registerTwoPanePairRuleForSettingsHome"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_1

    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->ADJACENT:Landroidx/window/embedding/SplitRule$FinishBehavior;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    goto :goto_0

    :goto_1
    sget-object v7, Landroidx/window/embedding/SplitRule$FinishBehavior;->ADJACENT:Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_2

    move-object v4, v7

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-object v4, v0

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_3

    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_3
    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    goto :goto_3

    :goto_4
    sget-object v7, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_4

    move-object v4, v7

    goto :goto_5

    :cond_4
    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-object v4, v0

    :goto_5
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public final addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Landroidx/window/embedding/ActivityFilter;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final initRules()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ActivityEmbeddingCtrl"

    const-string v0, "Not support this feature now"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "ActivityEmbeddingRulesController#initRules"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mRuleController:Landroidx/window/embedding/RuleController;

    invoke-virtual {v0}, Landroidx/window/embedding/RuleController;->clearRules()V

    const-string v1, "ActivityEmbeddingRulesController#registerHomepagePlaceholderRule"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-class v2, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/Settings$ConnectionsSettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, ":settings:is_second_layer_page"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {v3}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070296

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Landroidx/window/embedding/SplitAttributes$SplitType;->ratio(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object v3

    new-instance v5, Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    invoke-direct {v5, v1, v2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;-><init>(Ljava/util/Set;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMinWidthDp(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMinSmallestWidthDp(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object v1

    sget-object v2, Landroidx/window/embedding/EmbeddingAspectRatio;->ALWAYS_ALLOW:Landroidx/window/embedding/EmbeddingAspectRatio;

    invoke-virtual {v1, v2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setMaxAspectRatioInPortrait(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setSticky(Z)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object v1

    sget-object v2, Landroidx/window/embedding/SplitRule$FinishBehavior;->ADJACENT:Landroidx/window/embedding/SplitRule$FinishBehavior;

    invoke-virtual {v1, v2}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setFinishPrimaryWithPlaceholder(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->setDefaultSplitAttributes(Landroidx/window/embedding/SplitAttributes;)Landroidx/window/embedding/SplitPlaceholderRule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->build()Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/embedding/RuleController;->addRule(Landroidx/window/embedding/EmbeddingRule;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v1, "ActivityEmbeddingRulesController#registerAlwaysExpandRule"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-class v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$InternalActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroductionInternal;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics/face/FaceEnrollIntroductionInternal;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/remoteauth/RemoteAuthActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/remoteauth/RemoteAuthActivityInternal;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ChooseLockPattern;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v3, Lcom/android/settings/privatespace/PrivateSpaceSetupActivity;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ChooseLockPassword;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ConfirmLockPattern;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ConfirmLockPassword;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/samsung/android/settings/lockscreen/bixbyroutine/LockScreenRoutineActionActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    const v3, 0x7f1409f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroidx/window/embedding/ActivityFilter;

    sget-object v5, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    const-class v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Collection;Ljava/lang/Class;)V

    new-instance p0, Landroidx/window/embedding/ActivityFilter;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    const-string v5, "com.samsung.android.biometrics.app.setting"

    invoke-direct {v2, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/window/embedding/ActivityFilter;

    new-instance v2, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.biometrics.app.setting.fingerprint.enroll.FingerprintEnrollActivity"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/window/embedding/ActivityFilter;

    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.myfiles"

    const-string v6, "com.sec.android.app.myfiles.ui.SettingDashBoardActivity"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/window/embedding/ActivityRule$Builder;

    invoke-direct {p0, v1}, Landroidx/window/embedding/ActivityRule$Builder;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v4}, Landroidx/window/embedding/ActivityRule$Builder;->setAlwaysExpand(Z)Landroidx/window/embedding/ActivityRule$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/ActivityRule$Builder;->build()Landroidx/window/embedding/ActivityRule;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/RuleController;->addRule(Landroidx/window/embedding/EmbeddingRule;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method
