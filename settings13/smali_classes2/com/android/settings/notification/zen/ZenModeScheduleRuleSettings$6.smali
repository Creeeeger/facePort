.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showCustomPickerDialog(Landroid/content/Context;III)V
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

    .line 243
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(II)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 247
    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    div-int/lit8 v1, p1, 0x3c

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    rem-int/lit8 p1, p1, 0x3c

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 249
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    div-int/lit8 v0, p2, 0x3c

    iput v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 250
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    rem-int/lit8 p2, p2, 0x3c

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateRule(Landroid/net/Uri;)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSecScheduleStart(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroidx/preference/SecPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSecScheduleStart(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroidx/preference/SecPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$mupdateSecScheduleStartSummary(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
