.class public Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;
.super Ljava/lang/Object;
.source "HomepagePreferenceLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;
    }
.end annotation


# instance fields
.field private mIcon:Landroid/view/View;

.field private mIconPaddingStart:I

.field private mIconVisible:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryTextColor:Landroid/content/res/ColorStateList;

.field private mText:Landroid/view/View;

.field private mTextPaddingStart:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    .line 42
    iput v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 45
    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    const-string p0, "HomepagePreferenceLayoutHelper"

    .line 56
    invoke-static {p0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result p0

    sget v0, Lcom/android/settings/R$layout;->sesl_preference:I

    if-ne p0, v0, :cond_0

    .line 61
    sget p0, Lcom/android/settings/R$layout;->sec_homepage_preference:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 65
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "HomepagePreferenceLayoutHelper#onBindViewHolder"

    .line 113
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 116
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->preference_highlightable:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    sget v0, Lcom/android/settings/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    .line 119
    sget v0, Lcom/android/settings/R$id;->text_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    const v0, 0x1020016

    .line 121
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    const v0, 0x1020010

    .line 122
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    .line 124
    iget-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setIconVisible(Z)V

    .line 125
    iget p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setIconPaddingStart(I)V

    .line 126
    iget p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setTextPaddingStart(I)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setSummaryTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public setIconPaddingStart(I)V
    .locals 3

    .line 79
    iput p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    .line 80
    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 81
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    .line 72
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setSummaryTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    .line 105
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTextPaddingStart(I)V
    .locals 3

    .line 88
    iput p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 90
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 98
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
