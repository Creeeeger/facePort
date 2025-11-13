.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;
.super Ljava/lang/Object;
.source "DatePickerAlertDialog.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 8

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->-$$Nest$fgetmTabHost(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroid/widget/TabHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->edit_event_start_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged, currentTab is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatePickerAlertDialog"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->-$$Nest$fgetmDatePicker(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    .line 66
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->updateDate(III)V

    goto/16 :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->-$$Nest$fgetmDatePicker(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->-$$Nest$fgetmDatePicker(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v6, p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    .line 74
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, v4

    .line 78
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c.get(Calendar.MONTH):"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->updateDate(III)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->updateDate(III)V

    :goto_0
    return-void
.end method
