.class public Lcom/android/settingslib/widget/LayoutPreference;
.super Landroidx/preference/Preference;
.source "LayoutPreference.java"


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDescendantFocusability:I

.field private mIsRelativeLinkView:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$OiLRmfQWbEP-fDieCVpcBzOJp3k(Lcom/android/settingslib/widget/LayoutPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 v1, -0x1

    .line 51
    iput v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mDescendantFocusability:I

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mDescendantFocusability:I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/LayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mDescendantFocusability:I

    .line 105
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/LayoutPreference;->setView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mDescendantFocusability:I

    .line 117
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/LayoutPreference;->setView(Landroid/view/View;)V

    .line 118
    iput p3, p0, Lcom/android/settingslib/widget/LayoutPreference;->mDescendantFocusability:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/LayoutPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/LayoutPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mDescendantFocusability:I

    .line 111
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/LayoutPreference;->setView(Landroid/view/View;)V

    .line 112
    iput-boolean p3, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 123
    sget-object v0, Lcom/android/settingslib/widget/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 124
    sget v2, Lcom/android/settingslib/widget/R$styleable;->Preference_allowDividerAbove:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingslib/widget/LayoutPreference;->mAllowDividerAbove:Z

    .line 126
    sget v2, Lcom/android/settingslib/widget/R$styleable;->Preference_allowDividerBelow:I

    invoke-static {v1, v2, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingslib/widget/LayoutPreference;->mAllowDividerBelow:Z

    .line 128
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget p2, Lcom/android/settingslib/widget/R$styleable;->Preference_android_layout:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 140
    invoke-virtual {p1, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->setView(Landroid/view/View;)V

    return-void

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LayoutPreference requires a layout to be defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 1

    .line 145
    sget v0, Lcom/android/settingslib/widget/R$layout;->layout_preference_frame:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 146
    iput-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isRelativeLinkView()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mIsRelativeLinkView:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 156
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    .line 161
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 168
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 169
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setAllowDividerBelow(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mAllowDividerBelow:Z

    return-void
.end method
