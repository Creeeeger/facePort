.class public abstract Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButton:Landroid/widget/LinearLayout;

.field public mButtonText:Ljava/lang/String;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field public mProgressVisible:Z

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final initPreference(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0e2f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140886

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a0bd1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    return-void
.end method

.method public final setProgressVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1, v3, v3, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const p1, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    :goto_2
    return-void
.end method
