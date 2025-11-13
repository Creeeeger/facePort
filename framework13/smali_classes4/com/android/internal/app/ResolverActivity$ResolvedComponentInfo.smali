.class public final Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedComponentInfo"
.end annotation


# instance fields
.field private blacklist mFixedAtTop:Z

.field private final blacklist mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPinned:Z

.field private final blacklist mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemLabel:Ljava/lang/String;

.field private blacklist mSemPinTime:J

.field private blacklist mSemSubLabel:Ljava/lang/String;

.field public final blacklist name:Landroid/content/ComponentName;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    .line 2656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    .line 2669
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 2670
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 2671
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2674
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2675
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2676
    return-void
.end method

.method public blacklist findIntent(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2691
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2692
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2693
    return v0

    .line 2691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2696
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist findResolveInfo(Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2700
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2701
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2702
    return v0

    .line 2700
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2705
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCount()I
    .locals 1

    .line 2679
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getIntentAt(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    .line 2683
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 2687
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist isFixedAtTop()Z
    .locals 1

    .line 2717
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mFixedAtTop:Z

    return v0
.end method

.method public blacklist isPinned()Z
    .locals 1

    .line 2709
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mPinned:Z

    return v0
.end method

.method public blacklist semGetLabel()Ljava/lang/String;
    .locals 1

    .line 2739
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mSemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semGetPinnedTime()J
    .locals 2

    .line 2726
    iget-wide v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mSemPinTime:J

    return-wide v0
.end method

.method public blacklist semGetSubLabel()Ljava/lang/String;
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mSemSubLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semSetLabels(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "subLabel"    # Ljava/lang/String;

    .line 2735
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mSemLabel:Ljava/lang/String;

    .line 2736
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mSemSubLabel:Ljava/lang/String;

    .line 2737
    return-void
.end method

.method public blacklist semSetPinnedTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 2730
    iput-wide p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mSemPinTime:J

    .line 2731
    return-void
.end method

.method public blacklist setFixedAtTop(Z)V
    .locals 0
    .param p1, "isFixedAtTop"    # Z

    .line 2721
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mFixedAtTop:Z

    .line 2722
    return-void
.end method

.method public blacklist setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .line 2713
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mPinned:Z

    .line 2714
    return-void
.end method
