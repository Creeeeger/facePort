.class Lcom/android/internal/app/SemChooserRankerServiceResolverComparator;
.super Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.source "SemChooserRankerServiceResolverComparator.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "CHSResolverComparator"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "afterCompute"    # Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    .param p5, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist semCompare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 1
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/app/SemChooserRankerServiceResolverComparator;->semGetComparatorModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->semGetComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
