.class public Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHour:I

.field public final mMinute:I

.field public final mTimeSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mHour:I

    iput p3, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mMinute:I

    iput-object p4, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mTimeSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x22c

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance p1, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mHour:I

    iget v4, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mMinute:I

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object p1
.end method

.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeTimePickerFragment;->mTimeSetter:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;

    iget p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne p2, v0, :cond_0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput p3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->updateScheduleMode(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput p3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeSetSchedulePreferenceController;->updateScheduleMode(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
