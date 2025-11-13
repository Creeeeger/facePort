.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
.implements Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEndTime:I

.field public mIs24HourFormat:Z

.field public mStartTime:I

.field public mTabIndex:I

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public mTimePicker:Landroidx/picker/widget/SeslTimePicker;

.field public mTimePickerDialog:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    return-void
.end method


# virtual methods
.method public final onTimeChanged(II)V
    .locals 0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    if-nez p2, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updateTimeSubTab(II)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePickerDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final updatePicker$2(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method public final updateTimeSubTab(II)V
    .locals 4

    div-int/lit8 v0, p2, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget-boolean v3, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mIs24HourFormat:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, p2}, Ljava/util/Calendar;->set(II)V

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

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    return-void
.end method
