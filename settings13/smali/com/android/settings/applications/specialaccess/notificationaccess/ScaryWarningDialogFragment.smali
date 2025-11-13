.class public Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ScaryWarningDialogFragment.java"


# direct methods
.method public static synthetic $r8$lambda$Ol87jnOIJaBfpYnQa5vXDpPbSYQ(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$0(ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gvsozYGfrI77ZrWqaCnZIPMwqS4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p2, p3}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->enable(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p3, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessController;->setAccess(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x22d

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "l"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "c"

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 65
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->notification_listener_security_warning_title:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->notification_listener_security_warning_summary:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->allow:I

    new-instance v3, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v4, v1, p1}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;ZLcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V

    .line 73
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->deny:I

    new-instance v0, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 83
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/notificationaccess/ScaryWarningDialogFragment;
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "c"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "l"

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object p0
.end method
