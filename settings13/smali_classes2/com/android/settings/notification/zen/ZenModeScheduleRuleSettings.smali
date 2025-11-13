.class public Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# instance fields
.field private mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

.field private mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

.field private mIsDeleteDialogShowing:Z

.field private mIsDialogShowing:Z

.field private mPrefReapeatButton:Lcom/android/settingslib/widget/LayoutPreference;

.field private mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mScheduleNamePreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mScheduleNameView:Landroid/widget/EditText;

.field private mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mSecScheduleStart:Landroidx/preference/SecPreference;


# direct methods
.method public static synthetic $r8$lambda$GBpxFJRaCwZ5BJ2DEQ2xVh4VWWA(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->lambda$onCreateInternal$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H1A--9Gak8VFL-temqlKnp6aDkc(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->lambda$showConfirmDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSchedule(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduleNameView(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduleNameView_layout(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecScheduleStart(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideSoftKeyboard(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCustomPickerDialog(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showCustomPickerDialog(Landroid/content/Context;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSecScheduleStartSummary(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateSecScheduleStartSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDialogShowing:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDeleteDialogShowing:Z

    return-void
.end method

.method private hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 265
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    const-string v0, "ZenModeSettings"

    if-nez p1, :cond_0

    const-string p1, "hideSoftKeyboard focusedView is null force hide"

    .line 267
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_0

    :cond_0
    const-string v1, "hideSoftKeyboard"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateInternal$0(Landroid/view/View;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showConfirmDialog()V

    return-void
.end method

.method private synthetic lambda$showConfirmDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .line 279
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->schedule_delete_dialog_title:I

    .line 280
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->schedule_delete_dialog_delete:I

    new-instance v2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    .line 281
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->schedule_delete_dialog_cancel:I

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    .line 286
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_dnd_schedule_delete_button_text_color:I

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 287
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private showCustomPickerDialog(Landroid/content/Context;III)V
    .locals 7

    .line 243
    new-instance v6, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    new-instance v5, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;-><init>(Landroid/content/Context;IIILcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;)V

    iput-object v6, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    .line 258
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateSecScheduleStartSummary()Ljava/lang/String;
    .locals 10

    .line 342
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 343
    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 348
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0xa

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 349
    invoke-virtual {v3, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 353
    iget v4, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 354
    iget v7, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 355
    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 357
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 358
    iget-object v9, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-virtual {v8, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 359
    invoke-virtual {v8, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, v0

    if-lt v3, v7, :cond_2

    .line 363
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->zen_mode_end_time_next_day_summary_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 365
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x90

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 91
    sget p0, Lcom/android/settings/R$xml;->zen_mode_schedule_rule_settings:I

    return p0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 406
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 407
    new-instance p1, Landroidx/picker/app/SeslTimePickerDialog;

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 410
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 411
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 413
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1

    .line 416
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 395
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 396
    new-instance p1, Landroidx/picker/app/SeslTimePickerDialog;

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 399
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 400
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 402
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method protected onCreateInternal()V
    .locals 4

    const-string/jumbo v0, "schedule_name"

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNamePreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 97
    sget v1, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    const-string v1, "disableImage=true"

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNamePreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->schedule_name_input_layout:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    sget v1, Lcom/android/settings/R$string;->zen_mode_rule_name_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->zen_mode_rule_character_limit_warning:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    if-nez v0, :cond_2

    const-string/jumbo v0, "schedule_reapeat"

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mPrefReapeatButton:Lcom/android/settingslib/widget/LayoutPreference;

    .line 176
    sget v1, Lcom/android/settings/R$id;->sec_schedule_repeat:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->init()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->setRepeatListener(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;)V

    :cond_2
    const-string/jumbo v0, "schedule_time_start"

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    .line 215
    invoke-virtual {v0, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 227
    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    if-nez v0, :cond_3

    .line 228
    new-instance v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->schedule_delete_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setDefaultRoundButtonStyle()V

    .line 231
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_4

    .line 237
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->initRepeatButton([I)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 328
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onResume()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    .line 330
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 331
    iput-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    goto :goto_1

    .line 333
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    .line 335
    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    .line 336
    iput-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateSaveButton()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 440
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const-string v1, "isDialogShowing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 445
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    const-string v0, "isDeleteDialogShowing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 1

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 423
    iget p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 424
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 425
    iput p3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 427
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 428
    iput p3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 430
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateRule(Landroid/net/Uri;)V

    .line 431
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateSecScheduleStartSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 308
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "isDialogShowing"

    .line 309
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDialogShowing:Z

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "isDeleteDialogShowing"

    .line 312
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDeleteDialogShowing:Z

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDialogShowing:Z

    if-eqz p1, :cond_2

    .line 317
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 p2, p2, 0x3c

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr p2, v0

    .line 318
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v0, p1

    .line 319
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showCustomPickerDialog(Landroid/content/Context;III)V

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDeleteDialogShowing:Z

    if-eqz p1, :cond_3

    .line 322
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showConfirmDialog()V

    :cond_3
    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 85
    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected updateControlsInternal()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateSecScheduleStartSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
