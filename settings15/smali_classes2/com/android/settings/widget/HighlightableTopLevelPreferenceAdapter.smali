.class public final Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mHighlightKey:Ljava/lang/String;

.field public mHighlightNeeded:Z

.field public mHighlightPosition:I

.field public final mHighlightableBackgroundContentDescription:Ljava/lang/String;

.field public final mHighlightableBackgroundRes:I

.field public final mHighlightedBackgroundContentDescription:Ljava/lang/String;

.field public final mHighlightedBackgroundRes:I

.field public final mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

.field public final mNormalBackgroundRes:I

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mScrollPosition:I

.field public mScrolled:Z

.field public final mSyncRunnable:Lcom/android/settings/core/RoundCornerPreferenceAdapter$1;

.field public final mViewHolders:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    new-instance v0, Lcom/android/settings/core/RoundCornerPreferenceAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/core/RoundCornerPreferenceAdapter$1;-><init>(Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;)V

    iput-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mSyncRunnable:Lcom/android/settings/core/RoundCornerPreferenceAdapter$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    iput v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    const-string v0, "HighlightableTopLevelPreferenceAdapter"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    const/4 p3, 0x1

    xor-int/lit8 p4, p5, 0x1

    iput-boolean p4, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mViewHolders:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const p5, 0x10102f0

    invoke-virtual {p4, p5, p2, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iput p2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mNormalBackgroundRes:I

    const p2, 0x7f08090a

    iput p2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightableBackgroundRes:I

    const p2, 0x7f08090b

    iput p2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightedBackgroundRes:I

    const p2, 0x7f141a58

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightableBackgroundContentDescription:Ljava/lang/String;

    const p2, 0x7f142a95

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightedBackgroundContentDescription:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public final highlightPreference(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->requestHighlight$2()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1

    const-string v0, "HightlightableAdapter#onBindViewHolder"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->updateBackground(Landroidx/preference/PreferenceViewHolder;I)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;
    .locals 1

    const-string v0, "HightlightableAdapter#onCreateViewHolder"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-object p0
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final onPreferenceHierarchyChange(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mSyncRunnable:Lcom/android/settings/core/RoundCornerPreferenceAdapter$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    instance-of v0, p1, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a0b7e

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightableBackgroundRes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightableBackgroundContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final requestHighlight$2()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    iget-object v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {v2}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->scroll()V

    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightNeeded:Z

    const-string v4, "HighlightableTopLevelAdapter"

    if-eq v2, v3, :cond_7

    const-string v3, "Highlight needed change: "

    invoke-static {v3, v4, v2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightNeeded:Z

    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-nez v2, :cond_6

    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    return-void

    :cond_7
    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    if-ne v1, v0, :cond_8

    return-void

    :cond_8
    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Request highlight position "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is highlight needed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final scroll()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    iget v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    iget-object v2, v2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_3
    iget p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateBackground(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0a0b7e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightedBackgroundRes:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightedBackgroundContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    :cond_2
    :goto_0
    return-void
.end method
