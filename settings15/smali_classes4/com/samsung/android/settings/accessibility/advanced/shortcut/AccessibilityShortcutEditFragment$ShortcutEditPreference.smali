.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isSummaryDescriptionSet:Z

.field public summaryDescription:Ljava/lang/String;

.field public summaryView:Landroid/widget/TextView;

.field public type:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->type:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryView:Landroid/widget/TextView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->isSummaryDescriptionSet:Z

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryDescription:Ljava/lang/String;

    const p1, 0x7f0d0504

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->type:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->SOFTWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0545

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a07ce

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->isSummaryDescriptionSet:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
