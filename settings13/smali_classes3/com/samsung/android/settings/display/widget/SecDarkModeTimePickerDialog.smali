.class public Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "SecDarkModeTimePickerDialog.java"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIs24HourFormat:Z

.field private mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

.field private mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field private mTimePickerChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTimePickerDialog:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$fc1HCg9lgjDhBYFucMtHDMUem3A(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->lambda$intDialogButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iyV-dI4koNURiof9ahWXMu5uncc(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->timeFormatter(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nBV__jGNdKtw0AnruCOPa2SdxQU(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->lambda$intDialogButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTimePicker(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)Landroidx/picker/widget/SeslTimePicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePicker(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->updatePicker(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 48
    sget v0, Lcom/android/settings/R$style;->SecDarkModeTimePickerDialog:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->init()V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    new-instance v0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$1;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->init(IILcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;Landroidx/arch/core/util/Function;)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->select(I)V

    return-void
.end method

.method private init()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->initMainView()V

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->intDialogButton()V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onUpdateHourFormat()V

    return-void
.end method

.method private initMainView()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    sget v1, Lcom/android/settings/R$layout;->sec_dark_mode_time_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    .line 87
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sec_dark_mode_time_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslTimePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    .line 90
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnTimeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sec_dark_mode_time_picker_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    return-void
.end method

.method private intDialogButton()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_eye_comfort_time_picker_dialog_done:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V

    const/4 v2, -0x1

    .line 96
    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->schedule_delete_dialog_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;)V

    const/4 v2, -0x2

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$intDialogButton$0(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->getTimes()[I

    move-result-object p1

    const/4 p2, 0x0

    .line 101
    aget v0, p1, p2

    const/4 v1, 0x1

    .line 102
    aget p1, p1, v1

    .line 103
    sget-object v2, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save Time : start time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", end time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v3, v0

    const-string v5, "display_night_theme_on_time"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 107
    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v3, p1

    const-string v5, "display_night_theme_off_time"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 110
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p0, p2, v2, v0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onTimeSet(III)V

    .line 111
    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onTimeSet(III)V

    return-void
.end method

.method private synthetic lambda$intDialogButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method private onUpdateHourFormat()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDarkModeTimePickerUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mIs24HourFormat:Z

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->reload()V

    return-void
.end method

.method private timeFormatter(I)Ljava/lang/String;
    .locals 2

    .line 156
    div-int/lit8 v0, p1, 0x3c

    .line 157
    rem-int/lit8 p1, p1, 0x3c

    .line 159
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mIs24HourFormat:Z

    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/display/SecDarkModeTimePickerUtils;->getCustomCalendarInstance(IIZ)Ljava/util/Calendar;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mIs24HourFormat:Z

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/display/SecDarkModeTimePickerUtils;->getTimeText(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updatePicker(I)V
    .locals 2

    .line 133
    div-int/lit8 v0, p1, 0x3c

    .line 134
    rem-int/lit8 p1, p1, 0x3c

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method


# virtual methods
.method public addTimePickerChangeListener(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onEditTextModeChanged(Landroidx/picker/widget/SeslTimePicker;Z)V
    .locals 0

    return-void
.end method

.method public onTimeChanged(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->updateTime(I)V

    return-void
.end method

.method onTimeSet(III)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 168
    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;->onTimeSet(III)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onUpdateHourFormat()V

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
