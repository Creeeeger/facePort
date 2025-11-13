.class public Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
.super Landroidx/preference/Preference;
.source "SecActionButtonsPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;
    }
.end annotation


# instance fields
.field private final mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

.field private final mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 34
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 34
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 34
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 34
    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 60
    sget v0, Lcom/android/settings/R$layout;->sec_two_action_buttons:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->button1_positive:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmPositiveButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->button1_negative:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmNegativeButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->button2_positive:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmPositiveButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    sget v1, Lcom/android/settings/R$id;->button2_negative:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmNegativeButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->setUpButton()V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->setUpButton()V

    return-void
.end method

.method public setButton1Enabled(Z)Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmIsEnabled(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Z)V

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Text(I)Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmListener(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Text(I)Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmText(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fputmText(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setResetButtonAcc(Landroid/content/Context;)Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->-$$Nest$fgetmPositiveButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Lcom/samsung/android/settings/widget/SecRoundButtonView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tts_reset:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-object p0
.end method
