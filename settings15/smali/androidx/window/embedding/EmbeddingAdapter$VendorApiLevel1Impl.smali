.class final Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VendorApiLevel1Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0016\u0010\u000e\u001a\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0016\u0010\u0012\u001a\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0016\u0010\u0013\u001a\u00020\u00012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0010H\u0003J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010\u001c\u001a\u00020 2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010!\u001a\u00020\u00012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0010H\u0003J\u0018\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0003J\u001c\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020*0(2\u0006\u0010\r\u001a\u00020\u0008H\u0002J\"\u0010+\u001a\u00020,2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020-2\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bJ\"\u0010.\u001a\u00020/2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0018\u001a\u0002002\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bJ\u0014\u00101\u001a\u000202*\u0002022\u0006\u00103\u001a\u00020\u0008H\u0002J\u0014\u00101\u001a\u000204*\u0002042\u0006\u00103\u001a\u00020\u0008H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u00065"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;",
        "",
        "predicateAdapter",
        "Landroidx/window/core/PredicateAdapter;",
        "(Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/PredicateAdapter;)V",
        "getPredicateAdapter",
        "()Landroidx/window/core/PredicateAdapter;",
        "getSplitAttributesCompat",
        "Landroidx/window/embedding/SplitAttributes;",
        "splitInfo",
        "Landroidx/window/extensions/embedding/SplitInfo;",
        "isSplitAttributesSupported",
        "",
        "attrs",
        "translateActivityIntentPredicates",
        "splitPairFilters",
        "",
        "Landroidx/window/embedding/SplitPairFilter;",
        "translateActivityPairPredicates",
        "translateActivityPredicates",
        "activityFilters",
        "Landroidx/window/embedding/ActivityFilter;",
        "translateActivityRuleCompat",
        "Landroidx/window/extensions/embedding/ActivityRule;",
        "rule",
        "Landroidx/window/embedding/ActivityRule;",
        "predicateClass",
        "Ljava/lang/Class;",
        "translateCompat",
        "Landroidx/window/embedding/ActivityStack;",
        "activityStack",
        "Landroidx/window/extensions/embedding/ActivityStack;",
        "Landroidx/window/embedding/SplitInfo;",
        "translateIntentPredicates",
        "translateParentMetricsPredicate",
        "context",
        "Landroid/content/Context;",
        "splitRule",
        "Landroidx/window/embedding/SplitRule;",
        "translateSplitAttributesCompatInternal",
        "Lkotlin/Pair;",
        "",
        "",
        "translateSplitPairRuleCompat",
        "Landroidx/window/extensions/embedding/SplitPairRule;",
        "Landroidx/window/embedding/SplitPairRule;",
        "translateSplitPlaceholderRuleCompat",
        "Landroidx/window/extensions/embedding/SplitPlaceholderRule;",
        "Landroidx/window/embedding/SplitPlaceholderRule;",
        "setDefaultSplitAttributesCompat",
        "Landroidx/window/extensions/embedding/SplitPairRule$Builder;",
        "defaultAttrs",
        "Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final predicateAdapter:Landroidx/window/core/PredicateAdapter;

.field final synthetic this$0:Landroidx/window/embedding/EmbeddingAdapter;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/PredicateAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/core/PredicateAdapter;",
            ")V"
        }
    .end annotation

    const-string v0, "predicateAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    return-void
.end method

.method private final isSplitAttributesSupported(Landroidx/window/embedding/SplitAttributes;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getSplitType()Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$SplitType;->getValue$window_release()F

    move-result p0

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpg-double p0, v2, v0

    if-gtz p0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getSplitType()Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$SplitType;->getValue$window_release()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    sget-object v1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    filled-new-array {p0, v0, v1}, [Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getLayoutDirection()Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final setDefaultSplitAttributesCompat(Landroidx/window/extensions/embedding/SplitPairRule$Builder;Landroidx/window/embedding/SplitAttributes;)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0

    invoke-direct {p0, p2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateSplitAttributesCompatInternal(Landroidx/window/embedding/SplitAttributes;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    invoke-virtual {p1, p0}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    return-object p1
.end method

.method private final setDefaultSplitAttributesCompat(Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;Landroidx/window/embedding/SplitAttributes;)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    invoke-direct {p0, p2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateSplitAttributesCompatInternal(Landroidx/window/embedding/SplitAttributes;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    invoke-virtual {p1, p0}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    return-object p1
.end method

.method private final translateActivityIntentPredicates(Ljava/util/Set;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v2, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateActivityIntentPredicates$1;

    invoke-direct {v2, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateActivityIntentPredicates$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v1, v0, v2}, Landroidx/window/core/PredicateAdapter;->buildPairPredicate(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final translateActivityPairPredicates(Ljava/util/Set;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateActivityPairPredicates$1;

    invoke-direct {v1, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateActivityPairPredicates$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v2, v0, v1}, Landroidx/window/core/PredicateAdapter;->buildPairPredicate(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final translateActivityPredicates(Ljava/util/Set;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateActivityPredicates$1;

    invoke-direct {v1, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateActivityPredicates$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v0, v1}, Landroidx/window/core/PredicateAdapter;->buildPredicate(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final translateIntentPredicates(Ljava/util/Set;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    const-class v0, Landroid/content/Intent;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateIntentPredicates$1;

    invoke-direct {v1, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateIntentPredicates$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v0, v1}, Landroidx/window/core/PredicateAdapter;->buildPredicate(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final translateParentMetricsPredicate(Landroid/content/Context;Landroidx/window/embedding/SplitRule;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure",
            "NewApi"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    const-class v0, Landroid/view/WindowMetrics;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateParentMetricsPredicate$1;

    invoke-direct {v1, p2, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl$translateParentMetricsPredicate$1;-><init>(Landroidx/window/embedding/SplitRule;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroidx/window/core/PredicateAdapter;->buildPredicate(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final translateSplitAttributesCompatInternal(Landroidx/window/embedding/SplitAttributes;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/embedding/SplitAttributes;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->isSplitAttributesSupported(Landroidx/window/embedding/SplitAttributes;)Z

    move-result p0

    const/4 v0, 0x3

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/Pair;

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getSplitType()Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/window/embedding/SplitAttributes$SplitType;->getValue$window_release()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes;->getLayoutDirection()Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    move-result-object p1

    sget-object v2, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported layout direction must be covered in @isSplitAttributesSupported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getPredicateAdapter()Landroidx/window/core/PredicateAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->predicateAdapter:Landroidx/window/core/PredicateAdapter;

    return-object p0
.end method

.method public final getSplitAttributesCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitAttributes;
    .locals 1

    const-string/jumbo p0, "splitInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->Companion:Landroidx/window/embedding/SplitAttributes$SplitType$Companion;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSplitRatio()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/window/embedding/SplitAttributes$SplitType$Companion;->buildSplitTypeFromValue$window_release(F)Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitAttributes$Builder;->setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    sget-object p1, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitAttributes$Builder;->setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final translateActivityRuleCompat(Landroidx/window/embedding/ActivityRule;Ljava/lang/Class;)Landroidx/window/extensions/embedding/ActivityRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/embedding/ActivityRule;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/window/extensions/embedding/ActivityRule;"
        }
    .end annotation

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicateClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/window/extensions/embedding/ActivityRule$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/window/embedding/ActivityRule;->getFilters()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateActivityPredicates(Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/window/embedding/ActivityRule;->getFilters()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateIntentPredicates(Ljava/util/Set;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;

    invoke-virtual {p1}, Landroidx/window/embedding/ActivityRule;->getAlwaysExpand()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/ActivityRule$Builder;->setShouldAlwaysExpand(Z)Landroidx/window/extensions/embedding/ActivityRule$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/ActivityRule$Builder;->build()Landroidx/window/extensions/embedding/ActivityRule;

    move-result-object p0

    const-string p1, "ActivityRuleBuilder::cla\u2026\n                .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;
    .locals 2

    const-string p0, "activityStack"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/window/embedding/ActivityStack;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activityStack.activities"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/ActivityStack;->isEmpty()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/window/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method public final translateCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitInfo;
    .locals 4

    const-string/jumbo v0, "splitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/embedding/SplitInfo;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v1

    const-string/jumbo v2, "splitInfo.primaryActivityStack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitInfo;->getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v2

    const-string/jumbo v3, "splitInfo.secondaryActivityStack"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateCompat(Landroidx/window/extensions/embedding/ActivityStack;)Landroidx/window/embedding/ActivityStack;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->getSplitAttributesCompat(Landroidx/window/extensions/embedding/SplitInfo;)Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/window/embedding/SplitInfo;-><init>(Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/ActivityStack;Landroidx/window/embedding/SplitAttributes;)V

    return-object v0
.end method

.method public final translateSplitPairRuleCompat(Landroid/content/Context;Landroidx/window/embedding/SplitPairRule;Ljava/lang/Class;)Landroidx/window/extensions/embedding/SplitPairRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/window/embedding/SplitPairRule;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/window/extensions/embedding/SplitPairRule;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicateClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPairRule;->getFilters()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateActivityPairPredicates(Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPairRule;->getFilters()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateActivityIntentPredicates(Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateParentMetricsPredicate(Landroid/content/Context;Landroidx/window/embedding/SplitRule;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "SplitPairRuleBuilder::cl\u2026, rule)\n                )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    invoke-virtual {p2}, Landroidx/window/embedding/SplitRule;->getDefaultSplitAttributes()Landroidx/window/embedding/SplitAttributes;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->setDefaultSplitAttributesCompat(Landroidx/window/extensions/embedding/SplitPairRule$Builder;Landroidx/window/embedding/SplitAttributes;)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPairRule;->getClearTop()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setShouldClearTop(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object p1

    iget-object p3, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPairRule;->getFinishPrimaryWithSecondary()Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/window/embedding/EmbeddingAdapter;->translateFinishBehavior(Landroidx/window/embedding/SplitRule$FinishBehavior;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setFinishPrimaryWithSecondary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPairRule;->getFinishSecondaryWithPrimary()Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/window/embedding/EmbeddingAdapter;->translateFinishBehavior(Landroidx/window/embedding/SplitRule$FinishBehavior;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setFinishSecondaryWithPrimary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->build()Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object p0

    const-string p1, "SplitPairRuleBuilder::cl\u2026\n                .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final translateSplitPlaceholderRuleCompat(Landroid/content/Context;Landroidx/window/embedding/SplitPlaceholderRule;Ljava/lang/Class;)Landroidx/window/extensions/embedding/SplitPlaceholderRule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/window/embedding/SplitPlaceholderRule;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/window/extensions/embedding/SplitPlaceholderRule;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicateClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPlaceholderRule;->getPlaceholderIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPlaceholderRule;->getFilters()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateActivityPredicates(Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPlaceholderRule;->getFilters()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateIntentPredicates(Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->translateParentMetricsPredicate(Landroid/content/Context;Landroidx/window/embedding/SplitRule;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPlaceholderRule;->isSticky()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->setSticky(Z)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    iget-object p3, p0, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->this$0:Landroidx/window/embedding/EmbeddingAdapter;

    invoke-virtual {p2}, Landroidx/window/embedding/SplitPlaceholderRule;->getFinishPrimaryWithPlaceholder()Landroidx/window/embedding/SplitRule$FinishBehavior;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/window/embedding/EmbeddingAdapter;->translateFinishBehavior(Landroidx/window/embedding/SplitRule$FinishBehavior;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->setFinishPrimaryWithSecondary(I)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    move-result-object p1

    const-string p3, "SplitPlaceholderRuleBuil\u2026holder)\n                )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/window/embedding/SplitRule;->getDefaultSplitAttributes()Landroidx/window/embedding/SplitAttributes;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->setDefaultSplitAttributesCompat(Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;Landroidx/window/embedding/SplitAttributes;)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->build()Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    move-result-object p0

    const-string p1, "SplitPlaceholderRuleBuil\u2026\n                .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
