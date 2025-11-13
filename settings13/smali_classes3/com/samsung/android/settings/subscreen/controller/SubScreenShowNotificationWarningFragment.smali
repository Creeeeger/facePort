.class public Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SubScreenShowNotificationWarningFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;,
        Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;
    }
.end annotation


# instance fields
.field private mDialogFragmentCheckListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

.field private mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

.field private mType:I


# direct methods
.method public static synthetic $r8$lambda$K0v1CYi2TtDji8S0O8QFH9WRIy0(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NB6X-9K8Us0c0PPs-URTkMi41ns(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_zgltsQn74cQcKHQHRLH4E_FP0(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y7TT6kscKW6aUQ3TLDSnwz3BQnA(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->lambda$onCreateDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$inGONMk-6pRCDXiXa-2uY_CkKq4(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->lambda$onCreateDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkO_Lh5FU1IhTWRRtvXLzP8Eqbo(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->lambda$onCreateDialog$4(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialogFragmentCheckListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentCheckListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;->onPositiveClick()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;->onNegativeClick()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;->onPositiveClick()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;->onNegativeClick()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$4(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentCheckListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;->onCheckedChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;->onPositiveClick()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;
    .locals 3

    .line 39
    new-instance v0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_type"

    .line 42
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 44
    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialog_type"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mType:I

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->lockscreen_notification_dialog_checkbox:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 54
    sget v0, Lcom/android/settings/R$id;->lockscreen_notification_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 55
    sget v1, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_turn_on_sub_title:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    const/4 v1, 0x5

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextDirection(I)V

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    new-instance v2, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$1;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget v2, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mType:I

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    .line 91
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_turn_on_title:I

    .line 92
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sec_cover_screen_show_notifications_warning_dialog_turn_on:I

    new-instance v2, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;Landroid/widget/CheckBox;)V

    .line 94
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_cancel:I

    new-instance v1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V

    .line 97
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->sec_cover_screen_show_notifications_warning_dialog_title:I

    .line 68
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_cover_screen_show_notifications_warning_dialog_message:I

    .line 69
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_cover_screen_show_notifications_warning_dialog_turn_on:I

    new-instance v1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V

    .line 70
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_cover_screen_show_notifications_warning_dialog_cancel:I

    new-instance v1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V

    .line 73
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 79
    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_title:I

    .line 80
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_message:I

    .line 81
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_turn_off:I

    new-instance v1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V

    .line 82
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_notifications_warning_dialog_cancel:I

    new-instance v1, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;)V

    .line 85
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setCheckListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentCheckListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    return-void
.end method
