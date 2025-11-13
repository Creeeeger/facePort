.class public Lcom/android/settings/applications/credentials/PrimaryProviderPreference;
.super Lcom/android/settings/widget/GearPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButtonFrameView:Landroid/view/View;

.field public mButtonsCompactMode:Z

.field public mChangeButton:Landroid/widget/Button;

.field public mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

.field public mGearView:Landroid/view/View;

.field public mOpenButton:Landroid/widget/Button;

.field public mOpenButtonVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mChangeButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mGearView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonsCompactMode:Z

    iput-boolean p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButtonVisible:Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->newSettingsUi()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0517

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mChangeButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mGearView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonsCompactMode:Z

    iput-boolean p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButtonVisible:Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->newSettingsUi()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0517

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getButtonFrameView()Landroid/view/View;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    return-object p0
.end method

.method public getChangeButton()Landroid/widget/Button;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mChangeButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getGearView()Landroid/view/View;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mGearView:Landroid/view/View;

    return-object p0
.end method

.method public getOpenButton()Landroid/widget/Button;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->newSettingsUi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0ae1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;-><init>(Lcom/android/settings/applications/credentials/PrimaryProviderPreference;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButtonVisible:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a02f3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mChangeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;-><init>(Lcom/android/settings/applications/credentials/PrimaryProviderPreference;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0452

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->updateButtonFramePadding()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$1;-><init>(Lcom/android/settings/applications/credentials/PrimaryProviderPreference;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0a0e18

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mGearView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mGearView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/credentials/PrimaryProviderPreference$2;-><init>(Lcom/android/settings/applications/credentials/PrimaryProviderPreference;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public final shouldHideSecondTarget()Z
    .locals 0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->newSettingsUi()Z

    move-result p0

    return p0
.end method

.method public final updateButtonFramePadding()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonsCompactMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonFrameView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
