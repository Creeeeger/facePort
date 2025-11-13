.class public Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
.super Landroidx/preference/SecSwitchPreferenceScreen;
.source "SecRestrictedSwitchPreferenceScreen.java"


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private mIconSize:I

.field mRestrictedSwitchSummary:Ljava/lang/CharSequence;

.field mUseAdditionalSummary:Z


# direct methods
.method public static synthetic $r8$lambda$EYiV_eHcOslfkm9lYgr8VqPAbH0(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->lambda$getUpdatableEnterpriseString$0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 104
    sget v0, Lcom/android/settings/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 57
    iput-boolean p3, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mUseAdditionalSummary:Z

    .line 64
    new-instance p4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {p4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_3

    .line 66
    sget-object p4, Lcom/android/settings/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    sget p4, Lcom/android/settings/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 71
    iget v0, p4, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget p4, p4, Landroid/util/TypedValue;->data:I

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mUseAdditionalSummary:Z

    .line 76
    :cond_1
    sget p4, Lcom/android/settings/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p4, :cond_3

    .line 79
    iget p2, p4, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 81
    iget p2, p4, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_2

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 85
    :cond_2
    iget-object p2, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 89
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mUseAdditionalSummary:Z

    if-eqz p2, :cond_5

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isLargeText(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    sget p1, Lcom/android/settings/R$layout;->sec_restricted_switch_preference_screen_large:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 93
    :cond_4
    sget p1, Lcom/android/settings/R$layout;->sec_restricted_switch_preference_screen:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 95
    :goto_2
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->useAdminDisabledSummary(Z)V

    :cond_5
    return-void
.end method

.method private static getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 187
    invoke-static {}, Lcom/android/settingslib/utils/BuildCompatUtils;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_0
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUpdatableEnterpriseString$0(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method public isDisabledByAppOps()Z
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAppOps()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 209
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 123
    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->enabled_by_admin:I

    const-string v2, "Settings.ENABLED_BY_ADMIN_SWITCH_SUMMARY"

    .line 135
    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->disabled_by_admin:I

    const-string v2, "Settings.DISABLED_BY_ADMIN_SWITCH_SUMMARY"

    .line 138
    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_2
    :goto_0
    sget v1, Lcom/android/settings/R$id;->icon_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 149
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    iget v3, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mIconSize:I

    if-lez v3, :cond_3

    .line 152
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mIconSize:I

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mUseAdditionalSummary:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 156
    sget v2, Lcom/android/settings/R$id;->additional_summary:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const v2, 0x1020010

    .line 167
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 180
    invoke-virtual {p0}, Landroidx/preference/Preference;->isIconSpaceReserved()Z

    move-result p0

    if-eqz p0, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setAppOps(Landroid/app/AppOpsManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->isDisabledByAppOps()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAppOps(Z)Z

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 232
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
