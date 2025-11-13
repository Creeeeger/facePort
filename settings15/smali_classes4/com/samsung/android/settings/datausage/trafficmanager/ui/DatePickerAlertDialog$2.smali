.class public final Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 8

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-object p1, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140dad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onTabChanged, currentTab is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatePickerAlertDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-object p1, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/picker/widget/SeslDatePicker;->updateDate(III)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-object p1, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-object v0, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    iget-wide v6, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v0, v6, v7}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v6, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "c.get(Calendar.MONTH):"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c.get(Calendar.DAY_OF_MONTH):"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/picker/widget/SeslDatePicker;->updateDate(III)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/picker/widget/SeslDatePicker;->updateDate(III)V

    :goto_0
    return-void
.end method
