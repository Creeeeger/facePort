.class public final Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field public mLastPreference:Ljava/lang/Boolean;

.field public mRadioButton:Landroid/widget/RadioButton;

.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const p1, 0x7f0d08a0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p1, p3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;-><init>(Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v4, 0x4

    if-eqz v2, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const v5, 0x3ecccccd    # 0.4f

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0545

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final performClick()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v1, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v2, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iget-object v1, v0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v2}, Lcom/android/settingslib/dream/DreamBackend;->logDreamSettingChangeToStatsd(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mOldDreamEnabled:Z

    if-eq v1, v0, :cond_5

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    const/16 v3, 0x2f

    const/16 v4, 0x10cc

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mOldDreamEnabled:Z

    :cond_5
    return-void
.end method
