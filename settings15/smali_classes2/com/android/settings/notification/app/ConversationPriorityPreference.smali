.class public Lcom/android/settings/notification/app/ConversationPriorityPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAlertButton:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mIsConfigurable:Z

.field public mPriorityButton:Landroid/view/View;

.field public mSilenceButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d04c7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d04c7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d04c7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d04c7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a0e55

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    const v0, 0x7f0a00ca

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    const v0, 0x7f0a0ba6

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(ILandroid/view/ViewGroup;ZZ)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSelected(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040483

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040484

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const v2, 0x7f0a0797

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a085e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0f81

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    const v0, 0x7f0807a5

    goto :goto_4

    :cond_4
    const v0, 0x7f0807a6

    :goto_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateToggles(ILandroid/view/ViewGroup;ZZ)V
    .locals 2

    if-eqz p4, :cond_0

    new-instance p4, Landroid/transition/AutoTransition;

    invoke-direct {p4}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    invoke-virtual {p4, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    invoke-static {p2, p4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    const/4 p2, 0x2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    const/16 p2, -0x3e8

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
