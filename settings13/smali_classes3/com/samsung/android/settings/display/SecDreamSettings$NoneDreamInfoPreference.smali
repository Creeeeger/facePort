.class Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;
.super Landroidx/preference/SecPreference;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoneDreamInfoPreference"
.end annotation


# instance fields
.field private mRadioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    .line 614
    invoke-direct {p0, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 615
    sget p2, Lcom/android/settings/R$layout;->sec_dream_info_row:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 616
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_screensaver_none:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 617
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 618
    sget p1, Lcom/android/settings/R$drawable;->sec_screen_saver_none:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 623
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    .line 625
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 626
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 627
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$1;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 634
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x102001a

    .line 640
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 641
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    sget p0, Lcom/android/settings/R$id;->config_divider:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 644
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public performClick()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBlockListClickEvent(Lcom/samsung/android/settings/display/SecDreamSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fputmSkipRemoveAddPreferenceUpdateFromTouch(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V

    const/4 v0, 0x0

    move v1, v0

    .line 654
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 655
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 656
    instance-of v3, v2, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    if-eqz v3, :cond_1

    .line 657
    check-cast v2, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    .line 658
    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v3

    iput-boolean v0, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 659
    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->updateDataChanged()V

    goto :goto_1

    .line 660
    :cond_1
    instance-of v3, v2, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    if-eqz v3, :cond_2

    .line 661
    check-cast v2, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    .line 662
    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->updateDataChanged()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 666
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    .line 669
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 670
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$mupdateOnOffLoggingHelper(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    .line 675
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateDataChanged()V
    .locals 0

    .line 680
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
