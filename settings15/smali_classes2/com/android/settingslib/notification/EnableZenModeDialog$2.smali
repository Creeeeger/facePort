.class public final Lcom/android/settingslib/notification/EnableZenModeDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

.field public final synthetic val$conditionId:Landroid/net/Uri;

.field public final synthetic val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iput-object p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$conditionId:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCheckedChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnableZenModeDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    iget-object v0, v0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iget-object v1, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1040d82

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
