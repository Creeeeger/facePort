.class public Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "HighlightableTopLevelPreferenceAdapter.java"


# instance fields
.field private mHighlightKey:Ljava/lang/String;

.field private mHighlightNeeded:Z

.field private mHighlightPosition:I

.field private final mHighlightableBackgroundRes:I

.field private final mHighlightedBackgroundRes:I

.field private final mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

.field private mIsShowingMultiPane:Z

.field private final mNormalBackgroundRes:I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollPosition:I

.field private mScrolled:Z

.field private mViewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/preference/PreferenceViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VdD1yiSv1ZBBpDQRMP4VaOEGS5g(Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->scroll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Z)V
    .locals 1

    .line 100
    invoke-direct {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    .line 92
    iput v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    const-string v0, "HighlightableTopLevelPreferenceAdapter"

    .line 101
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 102
    iput-object p3, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    iput-object p4, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    const/4 p3, 0x1

    xor-int/lit8 p4, p5, 0x1

    .line 104
    iput-boolean p4, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    .line 105
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mViewHolders:Landroid/util/SparseArray;

    .line 106
    iput-object p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    .line 107
    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 119
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p4, 0x10102f0

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 122
    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mNormalBackgroundRes:I

    .line 123
    sget p1, Lcom/android/settings/R$drawable;->sec_highlightable_preference_background:I

    iput p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightableBackgroundRes:I

    .line 124
    sget p1, Lcom/android/settings/R$drawable;->sec_highlighted_preference_background:I

    iput p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightedBackgroundRes:I

    .line 126
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private addHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 305
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 316
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->isHighlightable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightedBackgroundRes:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private isHighlightNeeded()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mIsShowingMultiPane:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 345
    :cond_0
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private isHighlightable(Landroid/view/View;)Z
    .locals 1

    .line 355
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lcom/android/settings/R$id;->preference_highlightable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeHighlightAt(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0, v0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 323
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 334
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->isHighlightable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->isHighlightNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightableBackgroundRes:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mNormalBackgroundRes:I

    .line 335
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private scroll()V
    .locals 4

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    .line 280
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHomepageActivity:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    .line 284
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 285
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 286
    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->seslSetExpanded(Z)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public highlightPreference(Ljava/lang/String;Z)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    xor-int/lit8 p1, p2, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->requestHighlight()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1

    const-string v0, "HightlightableAdapter#onBindViewHolder"

    .line 140
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->updateBackground(Landroidx/preference/PreferenceViewHolder;I)V

    .line 144
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 62
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;
    .locals 1

    const-string v0, "HightlightableAdapter#onCreateViewHolder"

    .line 132
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object p0

    .line 134
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    .line 366
    instance-of v0, p1, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    move-object p0, p1

    check-cast p0, Lcom/android/settings/widget/HomepagePreference;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 373
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method public requestHighlight()V
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    .line 173
    iget-object v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 175
    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    const/4 v1, 0x1

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrolled:Z

    if-ltz v0, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    return-void

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->isHighlightNeeded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mScrollPosition:I

    .line 192
    invoke-direct {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->scroll()V

    .line 196
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightNeeded:Z

    const-string v4, "HighlightableTopLevelAdapter"

    if-eq v2, v3, :cond_6

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Highlight needed change: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-boolean v2, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightNeeded:Z

    .line 199
    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    .line 200
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-nez v2, :cond_5

    .line 203
    invoke-direct {p0, v0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightAt(I)V

    :cond_5
    return-void

    .line 208
    :cond_6
    iget v3, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    if-ne v1, v3, :cond_7

    return-void

    .line 212
    :cond_7
    iput v1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request highlight position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is highlight needed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_8

    return-void

    .line 220
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-ltz v0, :cond_9

    .line 224
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_9
    return-void
.end method

.method public setShowingMultiPane(Z)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShowingMultiPane : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighlightableTopLevelAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-boolean p1, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mIsShowingMultiPane:Z

    return-void
.end method

.method updateBackground(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->isHighlightNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    return-void

    .line 154
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->mHighlightKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->addHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;)V

    :goto_0
    return-void
.end method
