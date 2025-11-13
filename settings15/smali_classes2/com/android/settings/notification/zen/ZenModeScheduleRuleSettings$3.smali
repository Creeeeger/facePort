.class public final Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    const v0, 0x7f1438ca

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean p4, p2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean p3, p2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x14

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object v1, p2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-boolean v2, v2, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    if-nez v2, :cond_2

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const v2, 0x7f1438c7

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-le p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean p4, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0a0cea

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mMenuLandscape:Landroid/view/Menu;

    if-eqz p1, :cond_6

    const p2, 0x7f0a0079

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    if-nez p2, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    if-nez p0, :cond_4

    move p3, p4

    :cond_4
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateSaveButton()V

    :cond_6
    :goto_2
    return-void
.end method
