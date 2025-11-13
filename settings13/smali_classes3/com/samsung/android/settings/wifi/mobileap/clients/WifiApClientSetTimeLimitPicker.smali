.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;
.super Landroidx/picker/app/SeslTimePickerDialog;
.source "WifiApClientSetTimeLimitPicker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLimitHour:I

.field private mLimitMin:I

.field private final mMacAddress:Ljava/lang/String;

.field private mOnTimeSetListener:Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# direct methods
.method public static synthetic $r8$lambda$T_EFNNRU9xPuOWjWq_xiym9_J7c(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->lambda$new$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 25
    invoke-direct/range {v0 .. v5}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 26
    sget p6, Lcom/android/settings/R$string;->wifi_ap_time_limit:I

    invoke-virtual {p0, p6}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mContext:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mOnTimeSetListener:Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mMacAddress:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mLimitHour:I

    .line 31
    iput p5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mLimitMin:I

    if-gtz p4, :cond_0

    if-lez p5, :cond_1

    :cond_0
    const/4 p2, -0x2

    .line 33
    sget p3, Lcom/android/settings/R$string;->data_limit_cancel:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)V

    invoke-virtual {p0, p2, p3, p4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x3

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)V

    invoke-virtual {p0, p2, p1, p3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Landroidx/picker/app/SeslTimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/picker/app/SeslTimePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mLimitHour:I

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->mLimitMin:I

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onTimeChanged(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroidx/picker/app/SeslTimePickerDialog;->onTimeChanged(Landroidx/picker/widget/SeslTimePicker;II)V

    const/4 p1, -0x1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
