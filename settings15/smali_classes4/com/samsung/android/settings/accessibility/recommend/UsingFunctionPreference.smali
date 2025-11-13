.class public Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final announceText:Ljava/lang/CharSequence;

.field public final buttonContentDescription:Ljava/lang/CharSequence;

.field public final buttonText:Ljava/lang/CharSequence;

.field public final item:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->announceText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->item:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;

    const v0, 0x7f0d0534

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getActionButtonDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionType()I

    move-result v0

    iget-object v1, p2, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    const v2, 0x7f1401f5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    const v2, 0x7f143145

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    :cond_0
    const v2, 0x7f14313f

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->announceText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const v2, 0x7f143143

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    const v2, 0x7f143144

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    :cond_2
    const v2, 0x7f14313e

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->announceText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    const v2, 0x7f143142

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonText:Ljava/lang/CharSequence;

    const v2, 0x7f14313d

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->announceText:Ljava/lang/CharSequence;

    :goto_0
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    const v0, 0x7f1401ac

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionHighlightKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getUsingFunctionHighlightKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v1, p2, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->key:Ljava/lang/String;

    :goto_2
    const-string v2, ":settings:fragment_args_key"

    invoke-static {v2, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getFragmentClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {p2, p1}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a1095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->buttonContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a08a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;->item:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->usingFunction:Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;

    invoke-interface {v3, v4}, Lcom/samsung/android/settings/accessibility/base/controller/AccessibilityUsingFunction;->getLearnMoreButtonIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v3, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionPreference;Landroid/content/Intent;)V

    move-object p0, v4

    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, -0x1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setNextFocusRightId(I)V

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setNextFocusRightId(I)V

    :cond_b
    :goto_2
    return-void
.end method
