.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
.super Ljava/lang/Object;
.source "ResolverRankerServiceResolverComparator.java"

# interfaces
.implements Lcom/android/internal/app/ResolverComparatorModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolverRankerServiceComparatorModel"
.end annotation


# instance fields
.field private final blacklist mAnnotationsUsed:Z

.field private final blacklist mCollator:Ljava/text/Collator;

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mRanker:Landroid/service/resolver/IResolverRankerService;

.field private final blacklist mRankerServiceName:Landroid/content/ComponentName;

.field private final blacklist mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetsDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLandroid/content/pm/PackageManager;)V
    .locals 0
    .param p4, "collator"    # Ljava/text/Collator;
    .param p5, "ranker"    # Landroid/service/resolver/IResolverRankerService;
    .param p6, "rankerServiceName"    # Landroid/content/ComponentName;
    .param p7, "annotationsUsed"    # Z
    .param p8, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Ljava/text/Collator;",
            "Landroid/service/resolver/IResolverRankerService;",
            "Landroid/content/ComponentName;",
            "Z",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 560
    .local p1, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .local p2, "targetsDict":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .local p3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mStats:Ljava/util/Map;

    .line 562
    iput-object p2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    .line 563
    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    .line 564
    iput-object p4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mCollator:Ljava/text/Collator;

    .line 565
    iput-object p5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRanker:Landroid/service/resolver/IResolverRankerService;

    .line 566
    iput-object p6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRankerServiceName:Landroid/content/ComponentName;

    .line 567
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mAnnotationsUsed:Z

    .line 568
    iput-object p8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPm:Landroid/content/pm/PackageManager;

    .line 569
    return-void
.end method

.method private blacklist logMetrics(I)V
    .locals 4
    .param p1, "selectedPos"    # I

    .line 679
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRankerServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 681
    .local v0, "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x43d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 682
    .local v1, "log":Landroid/metrics/LogMaker;
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 683
    const/16 v2, 0x43e

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mAnnotationsUsed:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 684
    const/16 v2, 0x43f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 685
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 687
    .end local v0    # "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V

    return-object v0
.end method

.method public blacklist getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 639
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    .line 640
    .local v0, "target":Landroid/service/resolver/ResolverTarget;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v1

    return v1

    .line 643
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method synthetic blacklist lambda$getComparator$0$com-android-internal-app-ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 577
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mStats:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    .line 580
    .local v0, "lhsTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/resolver/ResolverTarget;

    .line 583
    .local v1, "rhsTarget":Landroid/service/resolver/ResolverTarget;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 584
    nop

    .line 585
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v2

    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v3

    .line 584
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 587
    .local v2, "selectProbabilityDiff":I
    if-eqz v2, :cond_1

    .line 588
    if-lez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 592
    .end local v0    # "lhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v1    # "rhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v2    # "selectProbabilityDiff":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 593
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 594
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 595
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 597
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method synthetic blacklist lambda$semGetComparator$1$com-android-internal-app-ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 7
    .param p1, "llhs"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rrhs"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 608
    .local v1, "lhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 609
    .local v0, "rhs":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mStats:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/resolver/ResolverTarget;

    .line 612
    .local v2, "lhsTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/resolver/ResolverTarget;

    .line 615
    .local v3, "rhsTarget":Landroid/service/resolver/ResolverTarget;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 616
    nop

    .line 617
    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v4

    invoke-virtual {v2}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    .line 616
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    .line 619
    .local v4, "selectProbabilityDiff":I
    if-eqz v4, :cond_1

    .line 620
    if-lez v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    return v5

    .line 624
    .end local v2    # "lhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v3    # "rhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v4    # "selectProbabilityDiff":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->semGetLabel()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "sa":Ljava/lang/CharSequence;
    if-nez v2, :cond_2

    .line 626
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 628
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->semGetLabel()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "sb":Ljava/lang/CharSequence;
    if-nez v3, :cond_3

    .line 630
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 632
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mCollator:Ljava/text/Collator;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public blacklist notifyOnTargetSelected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 648
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v0, :cond_3

    .line 650
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargetsDict:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 651
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 652
    .local v0, "selectedPos":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 653
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Landroid/content/ComponentName;)F

    move-result v1

    .line 654
    .local v1, "selectedProbability":F
    const/4 v2, 0x0

    .line 655
    .local v2, "order":I
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    .line 656
    .local v4, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_0

    .line 657
    add-int/lit8 v2, v2, 0x1

    .line 659
    .end local v4    # "target":Landroid/service/resolver/ResolverTarget;
    :cond_0
    goto :goto_0

    .line 660
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->logMetrics(I)V

    .line 661
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->mTargets:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v0    # "selectedPos":I
    .end local v1    # "selectedProbability":F
    .end local v2    # "order":I
    :cond_2
    goto :goto_1

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Train: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RRSResolverComparator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist semGetComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V

    return-object v0
.end method
