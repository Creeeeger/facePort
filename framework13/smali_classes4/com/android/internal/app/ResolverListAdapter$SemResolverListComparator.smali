.class Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemResolverListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mCollator:Ljava/text/Collator;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .line 1728
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;->mCollator:Ljava/text/Collator;

    .line 1730
    return-void
.end method


# virtual methods
.method public final blacklist compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 11
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1734
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1735
    .local v1, "lhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1736
    .local v2, "rhs":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 1737
    .local v3, "lhsScore":I
    const/4 v4, 0x0

    .line 1738
    .local v4, "rhsScore":I
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1739
    .local v5, "lhsAi":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1742
    .local v6, "rhlsAi":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 1743
    const/4 v0, -0x1

    return v0

    .line 1745
    :cond_0
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v7, :cond_1

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_1

    .line 1746
    const/4 v0, 0x1

    return v0

    .line 1749
    :cond_1
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.samsung.android.resolver.ranking_priority"

    if-eqz v7, :cond_2

    .line 1750
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1753
    :cond_2
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    .line 1754
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1757
    :cond_3
    if-eq v3, v4, :cond_4

    .line 1758
    sub-int v0, v4, v3

    return v0

    .line 1762
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    .line 1763
    .local v0, "lhsPg":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    iget-object v7, p0, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v7, v2}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v7

    .line 1764
    .local v7, "rhsPg":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    iget-object v8, p0, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    return v8
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1726
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method
