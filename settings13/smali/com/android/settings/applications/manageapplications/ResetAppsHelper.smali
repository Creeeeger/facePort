.class public Lcom/android/settings/applications/manageapplications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;
    }
.end annotation


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mNm:Landroid/app/INotificationManager;

.field private final mNpm:Landroid/net/NetworkPolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

.field private mResetDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAom(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNpm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetAppsDialogCallback(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUm(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    .line 83
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "package"

    .line 85
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v0, "notification"

    .line 87
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    .line 88
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    const-string v0, "appops"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    const-string/jumbo v0, "user"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetAppsDialogCallback:Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_reset_app_preferences_desc1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_reset_app_preferences_desc2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_reset_app_preferences_desc3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_reset_app_preferences_desc5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_reset_app_preferences_desc6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_reset_app_preferences_desc7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_button:I

    .line 129
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;-><init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V

    .line 130
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 152
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eq p2, p1, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;-><init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "resetDialog"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "resetDialog"

    .line 101
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method
