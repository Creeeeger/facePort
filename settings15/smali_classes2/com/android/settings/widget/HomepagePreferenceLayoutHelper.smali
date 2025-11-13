.class public final Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIcon:Landroid/view/View;

.field public mIconPaddingStart:I

.field public mIconVisible:Z

.field public mSummary:Landroid/widget/TextView;

.field public mSummaryTextColor:Landroid/content/res/ColorStateList;

.field public final mSummaryTextPrimaryColor:Landroid/content/res/ColorStateList;

.field public mText:Landroid/view/View;

.field public mTextPaddingStart:I

.field public mTitle:Landroid/widget/TextView;

.field public mTitleTextColor:Landroid/content/res/ColorStateList;

.field public mUseSummaryPrimaryColor:Z


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    iput v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextPrimaryColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mUseSummaryPrimaryColor:Z

    const-string v0, "HomepagePreferenceLayoutHelper"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v0

    const v1, 0x7f0d0ae6

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d08ca

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060659

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    const-string v0, "HomepagePreferenceLayoutHelper#onBindViewHolder"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v2, 0x7f0a0b7e

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a07a1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    const v0, 0x7f0a0ff7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    iget-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    iput-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconVisible:Z

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    iput p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIconPaddingStart:I

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    iget p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    iput p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTextPaddingStart:I

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mText:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mIcon:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const v0, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mUseSummaryPrimaryColor:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLineBreakWordStyle(I)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method
