.class public final Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$mToggleAllCheck(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object v3, v2, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object v2, v2, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object v3, v3, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState$3()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    :cond_3
    return-void
.end method
