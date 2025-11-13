.class public Lcom/android/settingslib/PrimarySwitchPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mChecked:Z

.field public mCheckedSet:Z

.field public mEnableSwitch:Z

.field public mSwitch:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method


# virtual methods
.method public getCheckedState()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d02ce

    return p0
.end method

.method public isSwitchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x800015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    const v0, 0x7f0a0cd7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/PrimarySwitchPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    if-nez v0, :cond_1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final shouldHideSecondTarget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
