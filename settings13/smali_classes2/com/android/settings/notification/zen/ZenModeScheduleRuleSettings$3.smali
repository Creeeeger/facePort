.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 140
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 141
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmScheduleNameView(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/widget/EditText;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->zen_mode_rule_name_hint:I

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 143
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean p3, p2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iput-boolean p4, p2, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    .line 147
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x14

    if-lt p2, v0, :cond_1

    .line 148
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmScheduleNameView_layout(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 149
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmScheduleNameView_layout(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    iget-object p4, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object p4, p4, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_rule_character_limit_warning:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmScheduleNameView_layout(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmScheduleNameView_layout(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmScheduleNameView_layout(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 158
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-le p1, v0, :cond_3

    .line 159
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->disableSaveButton()V

    goto :goto_2

    .line 161
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateSaveButton()V

    :goto_2
    return-void
.end method
