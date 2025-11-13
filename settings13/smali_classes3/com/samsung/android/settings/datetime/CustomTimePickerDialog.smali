.class public Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "CustomTimePickerDialog.java"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAB_INDEX_END:I

.field private final TAB_INDEX_START:I

.field private final mContext:Landroid/content/Context;

.field private mEndTime:I

.field private mIs24HourFormat:Z

.field private mStartTime:I

.field private mTabIndex:I

.field private mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field private mTimePickerChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTimePickerDialog:Landroid/view/View;

.field private timePickerChangeListener:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;


# direct methods
.method public static synthetic $r8$lambda$40s92fHcx69kMWGi3H_5wQW03Io(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->lambda$intDialogButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nwoJfltT38WtNGQU_2-9NAYnMdw(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->lambda$intDialogButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEndTime(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimePicker(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)Landroidx/picker/widget/SeslTimePicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTabIndex(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePicker(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updatePicker(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;)V
    .locals 1

    .line 52
    sget v0, Lcom/android/settings/R$style;->TabCustomTimePickerDialog:I

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->TAB_INDEX_START:I

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->TAB_INDEX_END:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    .line 55
    iput p3, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    .line 56
    iput p4, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    .line 57
    iput-object p5, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->timePickerChangeListener:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->initMainView()V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->intDialogButton()V

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->onUpdateHourFormat()V

    .line 77
    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updateTime(II)V

    .line 78
    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updateTime(II)V

    .line 79
    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updatePicker(I)V

    return-void
.end method

.method private initMainView()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    sget v1, Lcom/android/settings/R$layout;->sec_tab_custom_time_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tab_custom_time_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/picker/widget/SeslTimePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    .line 88
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnTimeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tab_custom_time_picker_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 93
    iget v1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 98
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$1;-><init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private intDialogButton()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)V

    const/4 v2, -0x1

    .line 125
    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_dnd_schedule_action_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;)V

    const/4 v2, -0x2

    .line 135
    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$intDialogButton$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 128
    sget-object p1, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save Time : start time = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", end time = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->timePickerChangeListener:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;

    iget p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    iget p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;->onTimeChanged(II)V

    return-void
.end method

.method private synthetic lambda$intDialogButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method

.method private onUpdateHourFormat()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    return-void
.end method

.method private updatePicker(I)V
    .locals 2

    .line 154
    div-int/lit8 v0, p1, 0x3c

    .line 155
    rem-int/lit8 p1, p1, 0x3c

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method private updateTime(II)V
    .locals 3

    .line 166
    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 v1, p2, 0x3c

    iget-boolean v2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getCustomCalendarInstance(IIZ)Ljava/util/Calendar;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->tab_custom_time_picker_tab:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    const-string v2, " "

    if-nez p1, :cond_1

    .line 170
    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    .line 172
    iget-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getTimeText(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-boolean p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    if-nez p2, :cond_0

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getAmPmText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 176
    invoke-virtual {v1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->seslSetSubText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 179
    :cond_1
    iput p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getTimeText(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-boolean p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mIs24HourFormat:Z

    if-nez p2, :cond_2

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getAmPmText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/4 p2, 0x1

    .line 184
    invoke-virtual {v1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    .line 185
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->seslSetSubText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 187
    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mStartTime:I

    iget p2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mEndTime:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->onTimeChange(II)V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Landroidx/picker/widget/SeslTimePicker;Z)V
    .locals 0

    return-void
.end method

.method onTimeChange(II)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 204
    iget-object v2, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog$TimePickerChangeListener;->onTimeChanged(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTimeChanged(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    .line 150
    iget p1, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTabIndex:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->updateTime(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->onUpdateHourFormat()V

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;->mTimePickerDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
