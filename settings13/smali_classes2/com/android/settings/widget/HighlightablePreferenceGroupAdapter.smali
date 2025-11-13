.class public Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# static fields
.field static final DELAY_COLLAPSE_DURATION_MILLIS:J = 0x12cL

.field static final DELAY_HIGHLIGHT_DURATION_MILLIS:J = 0x258L


# instance fields
.field mFadeInAnimated:Z

.field final mHighlightColor:I

.field private final mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequested:Z

.field private final mNormalBackgroundRes:I


# direct methods
.method public static synthetic $r8$lambda$A-X4STCybJTSC4UCtwmJtl_-feM(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$applyHighlight$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jm-4_pVOd17fT7nz10xyas78A9g(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestRemoveHighlightDelayed$3(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NqcY9XTRx30RHbASCft1MLPnurw(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$addHighlightBackground$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RF-nlHs2lPT52JPGenVzcAtirW8(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$applyHighlight$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rlk3RRTM4qpHV27qH3gHiQ1ZsGo(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$removeHighlightBackground$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTwgSe4eyXseqdwe2JZGQ8xCHD8(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$2(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmNormalBackgroundRes(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    return p0
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 115
    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    .line 116
    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 117
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 118
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x101030e

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 121
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iput p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 122
    sget p2, Lcom/android/settings/R$color;->preference_highlight_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    return-void
.end method

.method private addHighlightBackground(Landroidx/preference/PreferenceViewHolder;Z)V
    .locals 8

    .line 253
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 254
    sget v1, Lcom/android/settings/R$id;->preference_highlighted:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v1, "HighlightableAdapter"

    if-nez p2, :cond_0

    .line 256
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "AddHighlight: Not animation requested - setting highlight background"

    .line 257
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroidx/preference/PreferenceViewHolder;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 261
    iput-boolean p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    .line 262
    iget v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 263
    iget v3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 264
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, p2

    .line 264
    invoke-static {v4, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0xc8

    .line 266
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    new-instance v2, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    invoke-virtual {p2, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x4

    .line 270
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 271
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    const-string p2, "AddHighlight: starting fade in animation"

    .line 272
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public static adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method private static synthetic lambda$addHighlightBackground$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$applyHighlight$0(Landroid/view/View;)V
    .locals 4

    .line 145
    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    sget v0, Lcom/android/settings/R$id;->preference_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 155
    iput v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$applyHighlight$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private static synthetic lambda$removeHighlightBackground$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 299
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$requestHighlight$2(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 232
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 233
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 234
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$requestRemoveHighlightDelayed$3(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;Z)V

    return-void
.end method

.method private removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;Z)V
    .locals 6

    .line 278
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "HighlightableAdapter"

    if-nez p2, :cond_0

    .line 280
    sget p1, Lcom/android/settings/R$id;->preference_highlighted:I

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 281
    iget p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p0, "RemoveHighlight: No animation requested - setting normal background"

    .line 282
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v2, Lcom/android/settings/R$id;->preference_highlighted:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "RemoveHighlight: Not highlighted - skipping"

    .line 288
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_1
    iget p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    .line 292
    iget v3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    .line 294
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 295
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    const/4 p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, p2

    .line 295
    invoke-static {v2, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0x1f4

    .line 297
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    new-instance v2, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    new-instance v2, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    const-string p0, "Starting fade out animation"

    .line 310
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method applyHighlight(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 137
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 138
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    sget v1, Lcom/android/settings/R$id;->preference_key:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 143
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_1

    .line 144
    new-instance p2, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    new-instance p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public isHighlightRequested()Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->applyHighlight(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 52
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    .line 316
    instance-of v0, p1, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    move-object p0, p1

    check-cast p0, Lcom/android/settings/widget/HomepagePreference;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 323
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method public requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 218
    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 221
    :cond_0
    iget-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 225
    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    .line 226
    new-instance p3, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method requestRemoveHighlightDelayed(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 245
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 246
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroidx/preference/PreferenceViewHolder;)V

    const-wide/16 p0, 0x3a98

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateBackground(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 169
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 170
    iget v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 174
    iget-boolean p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->addHighlightBackground(Landroidx/preference/PreferenceViewHolder;Z)V

    goto :goto_0

    .line 175
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lcom/android/settings/R$id;->preference_highlighted:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroidx/preference/PreferenceViewHolder;Z)V

    :cond_1
    :goto_0
    return-void
.end method
