.class public final Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    return-void
.end method


# virtual methods
.method public final onRequestUpdated()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mMDEServiceBindingManager:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onSuggestionsUpdated(Ljava/util/List;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/mde/SuggestionInfo;

    iget-object v2, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mUiType:Ljava/lang/String;

    const-string v3, "depth_in"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$1;->this$0:Lcom/samsung/android/settings/mde/MDESuggestionsSettings;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->mActivityResultListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/mde/SuggestionInfo;

    const-string v2, "MDESuggestionPreference"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->createPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/mde/MDESuggestionPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v3, "SecInsetCategoryPreference"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings;->createPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key_inset_category_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    iget-object v5, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mId:Ljava/lang/String;

    iput-object v5, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mShortcutId:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v5, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitleText:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v5, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mSummary:Ljava/lang/CharSequence;

    iput-object v5, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v5, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v5, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIconView:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_5
    iget-object v5, v1, Lcom/samsung/android/settings/mde/SuggestionInfo;->mExtras:Landroid/os/PersistableBundle;

    const-string v6, "buttonLabel"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonText(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Lcom/samsung/android/settings/mde/SuggestionInfo;)V

    iput-object v5, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitView:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v5, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v1, v4}, Lcom/samsung/android/settings/mde/MDESuggestionsSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionsSettings;Lcom/samsung/android/settings/mde/SuggestionInfo;Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;)V

    iput-object v5, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, v4, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_1

    :cond_8
    :goto_2
    return-void
.end method
