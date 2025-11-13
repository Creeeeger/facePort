.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisabledByAdmin:Z

.field public mDisabledByAppOps:Z

.field public mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final mGetKey:Ljava/lang/String;

.field public final mGetTitle:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPreferenceViewHolder:Landroidx/preference/PreferenceViewHolder;

.field public final mShortcutPosition:Ljava/util/HashMap;

.field public mUid:I

.field public final mUserShortcutType:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mShortcutPosition:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mUid:I

    const v0, 0x7f0d0b35

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetTitle:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mUserShortcutType:I

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mPreferenceViewHolder:Landroidx/preference/PreferenceViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mShortcutPosition:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetKey:Ljava/lang/String;

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceLayout;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceLayout;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    iput-boolean v0, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceLayout;->isChecked:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceLayout;->summary:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060711

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->updateCheckBox()V

    return-void
.end method

.method public final performClick()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mDisabledByAdmin:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mDisabledByAppOps:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mUid:I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SHOW_RESTRICTED_SETTING_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public final setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mDisabledByAdmin:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mDisabledByAppOps:Z

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final setDisabledByAppOps(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mDisabledByAppOps:Z

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mPackageName:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mUid:I

    iget-boolean p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mDisabledByAdmin:Z

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/WrappedDrawable;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v2, v4, p1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5, v1, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    invoke-virtual {v3, p1, v0, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v0, 0x11

    invoke-virtual {v3, p1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object p1, v3

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateCheckBox()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    const v1, 0x7f0a0ab9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    const v2, 0x7f0a0ac0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    const v3, 0x7f0a030e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mShortcutPosition:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mPreferenceViewHolder:Landroidx/preference/PreferenceViewHolder;

    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    if-ne v3, v5, :cond_4

    iget-boolean v3, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mUserShortcutType:I

    invoke-static {v3, v5}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getShortcutService(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x3a

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mUserShortcutType:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f142ba4

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreference;->mGetTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
