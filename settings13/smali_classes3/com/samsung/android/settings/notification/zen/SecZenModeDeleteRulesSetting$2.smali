.class Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;
.super Ljava/lang/Object;
.source "SecZenModeDeleteRulesSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->createActionbarLayout()V
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

    .line 187
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$fgetmSelectAllCheckbox(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$mToggleAllCheck(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Z)V

    return-void
.end method
