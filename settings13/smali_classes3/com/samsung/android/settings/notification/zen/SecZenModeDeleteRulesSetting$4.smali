.class Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;
.super Ljava/lang/Object;
.source "SecZenModeDeleteRulesSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectedId(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$mToggleAllCheck(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Z)V

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 262
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectedId(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$mupdateActionbarState(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fputmSelectedId(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
