.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "EyeComfortTimeSettingDialog.java"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAB_INDEX_END:I

.field private final TAB_INDEX_START:I

.field private mContext:Landroid/content/Context;

.field private mEndTime:I

.field private mIs24HourFormat:Z

.field private mStartTime:I

.field private mTabIndex:I

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field private mTimePickerDialog:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$lN1XbSzznsQvUfKuYc9KAp_XbFM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->lambda$intDialogButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wvymQUB65vsNLZlcLnkE-0HvFdU(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->lambda$intDialogButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEndTime(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimePicker(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)Landroidx/picker/widget/SeslTimePicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTabIndex(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePicker(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updatePicker(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 47
    sget v0, Lcom/android/settings/R$style;->EyeComfortTimePickerDialog:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->TAB_INDEX_START:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->TAB_INDEX_END:I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    .line 50
    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    .line 51
    iput p3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    .line 52
    iput p4, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->initMainView()V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->intDialogButton()V

    .line 71
    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updateTimeSubTab(II)V

    .line 72
    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updateTimeSubTab(II)V

    .line 73
    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updatePicker(I)V

    return-void
.end method

.method private initMainView()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    sget v1, Lcom/android/settings/R$layout;->sec_eye_comfort_time_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sec_eye_comfort_time_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslTimePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    .line 82
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnTimeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mIs24HourFormat:Z

    .line 86
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sec_eye_comfort_time_picker_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private intDialogButton()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_eye_comfort_time_picker_dialog_done:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$intDialogButton$0(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 128
    sget-object p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save Time : start time = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", end time = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    int-to-long v0, p2

    const-string p2, "blue_light_filter_on_time"

    const/4 v2, -0x2

    invoke-static {p1, p2, v0, v1, v2}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    int-to-long v0, p2

    const-string p2, "blue_light_filter_off_time"

    invoke-static {p1, p2, v0, v1, v2}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    const/16 p1, 0x107e

    const p2, 0x9d0d

    .line 133
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 134
    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    int-to-long v0, p2

    const/16 p2, 0x1cf4

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 135
    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    int-to-long v0, p0

    const/16 p0, 0x1cf5

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method private static synthetic lambda$intDialogButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p0, 0x107e

    const p1, 0x9d0c

    .line 139
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method private updatePicker(I)V
    .locals 2

    .line 160
    div-int/lit8 v0, p1, 0x3c

    .line 161
    rem-int/lit8 p1, p1, 0x3c

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method private updateTimeSubTab(II)V
    .locals 4

    .line 167
    div-int/lit8 v0, p2, 0x3c

    .line 168
    rem-int/lit8 p2, p2, 0x3c

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 173
    iget-boolean v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mIs24HourFormat:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 174
    invoke-virtual {v2, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 175
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->seslSetSubText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public getEndTime()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    return p0
.end method

.method public getStartTime()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    return p0
.end method

.method public getTabIndex()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    return p0
.end method

.method public onEditTextModeChanged(Landroidx/picker/widget/SeslTimePicker;Z)V
    .locals 0

    return-void
.end method

.method public onTimeChanged(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    .line 151
    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    if-nez p1, :cond_0

    .line 152
    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    goto :goto_0

    .line 154
    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    .line 156
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updateTimeSubTab(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
