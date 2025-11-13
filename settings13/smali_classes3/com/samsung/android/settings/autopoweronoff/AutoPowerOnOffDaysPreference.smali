.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
.super Landroidx/preference/SecPreference;
.source "AutoPowerOnOffDaysPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method private showDialog()V
    .locals 5

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 86
    sget v2, Lcom/android/settings/R$layout;->sec_dialog_auto_power_on_off_days:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    sget v2, Lcom/android/settings/R$id;->list_area:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 89
    new-instance v3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v3, p0, v0, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iput-object v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    sget v0, Lcom/android/settings/R$string;->repeat_title:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    sget v0, Lcom/android/settings/R$string;->sec_common_done:I

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    sget v0, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->showDialog()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->getDayOfWeek()Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDaysOfWeek.getCoded() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoPowerOnOffDaysPreference"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    return-void
.end method
