.class Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemRankedAppsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mByScore:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCollator:Ljava/text/Collator;

.field blacklist mRlc:Lcom/android/internal/app/ResolverListController;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/util/Comparator;Lcom/android/internal/app/ResolverListController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "rlc"    # Lcom/android/internal/app/ResolverListController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Lcom/android/internal/app/ResolverListController;",
            ")V"
        }
    .end annotation

    .line 15456
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15457
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mCollator:Ljava/text/Collator;

    .line 15458
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mByScore:Ljava/util/Comparator;

    .line 15459
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mRlc:Lcom/android/internal/app/ResolverListController;

    .line 15460
    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I
    .locals 9
    .param p1, "lhsp"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 15464
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->isPinned()Z

    move-result v0

    .line 15465
    .local v0, "lPinned":Z
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->isPinned()Z

    move-result v1

    .line 15468
    .local v1, "rPinned":Z
    const/4 v2, -0x1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 15469
    return v2

    .line 15470
    :cond_0
    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 15471
    return v3

    .line 15472
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 15473
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 15477
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 15478
    .local v4, "lCn":Landroid/content/ComponentName;
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 15479
    .local v5, "rCn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mRlc:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ResolverListController;->semGetChooserCount(Landroid/content/ComponentName;)F

    move-result v6

    .line 15480
    .local v6, "lChooserScore":F
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mRlc:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v7, v5}, Lcom/android/internal/app/ResolverListController;->semGetChooserCount(Landroid/content/ComponentName;)F

    move-result v7

    .line 15481
    .local v7, "rChooserScore":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_3

    .line 15482
    return v2

    .line 15483
    :cond_3
    cmpg-float v2, v6, v7

    if-gez v2, :cond_4

    .line 15484
    return v3

    .line 15489
    .end local v4    # "lCn":Landroid/content/ComponentName;
    .end local v5    # "rCn":Landroid/content/ComponentName;
    .end local v6    # "lChooserScore":F
    .end local v7    # "rChooserScore":F
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->mByScore:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 15452
    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    check-cast p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;->compare(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I

    move-result p1

    return p1
.end method
