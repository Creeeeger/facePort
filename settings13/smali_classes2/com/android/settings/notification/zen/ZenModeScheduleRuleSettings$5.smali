.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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

    .line 216
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 219
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    .line 220
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 p1, p1, 0x3c

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr p1, v0

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v0, v1

    .line 222
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->-$$Nest$mshowCustomPickerDialog(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/content/Context;III)V

    return v2
.end method
