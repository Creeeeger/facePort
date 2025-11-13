.class public Lcom/android/settings/widget/CardPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButtonsGroup:Ljava/util/Optional;

.field public mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

.field public mPrimaryButton:Ljava/util/Optional;

.field public mPrimaryButtonText:Ljava/lang/String;

.field public mPrimaryButtonVisible:Z

.field public mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

.field public mSecondaryButton:Ljava/util/Optional;

.field public mSecondaryButtonText:Ljava/lang/String;

.field public mSecondaryButtonVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/CardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400d9

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    const v0, 0x7f0a02d1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonText:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryBtnClickListener:Landroid/view/View$OnClickListener;

    iget-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    iget-object v0, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButton:Ljava/util/Optional;

    new-instance v1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    new-instance v3, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v3, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonText:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v3, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryBtnClickListener:Landroid/view/View$OnClickListener;

    iget-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    iget-object v2, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButton:Ljava/util/Optional;

    new-instance v3, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean p1, p0, Lcom/android/settings/widget/CardPreference;->mSecondaryButtonVisible:Z

    iget-boolean v2, p0, Lcom/android/settings/widget/CardPreference;->mPrimaryButtonVisible:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/settings/widget/CardPreference;->mButtonsGroup:Ljava/util/Optional;

    new-instance p1, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0}, Lcom/android/settings/widget/CardPreference$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
