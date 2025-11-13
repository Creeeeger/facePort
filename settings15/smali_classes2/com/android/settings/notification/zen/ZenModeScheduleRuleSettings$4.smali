.class public final Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    new-instance v3, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;-><init>(Landroid/content/Context;IILcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;)V

    iput-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x0

    return p0
.end method
