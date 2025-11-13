.class public Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UnknownSourceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final blacklist EXTRA_INSTALL_TYPE:Ljava/lang/String; = "android.content.pm.extra.unknown.installtype"

.field private static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field private static final blacklist TAG:Ljava/lang/String; = "UnknownSourceAppManager"


# instance fields
.field private blacklist mButtonClicked:Z

.field private blacklist mSessionId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Wn01MmwgVu9vjPOYRkHI_vHWO18(Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->lambda$initAlertParams$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    return-void
.end method

.method private blacklist allowInstall()V
    .locals 3

    const-string v0, "UnknownSourceAppManager"

    const-string v1, "Allow installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    return-void
.end method

.method private blacklist initAlertParams(I)V
    .locals 6

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x1040f74

    const v2, 0x1040f6f

    const v3, 0x104000a

    const v4, 0x1040f73

    const v5, 0x1040f70

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnknownSourceAppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f6c

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f6b

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v5}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v2, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;I)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_5

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x1090088

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->isChinaDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f65

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f63

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f64

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f62

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_5

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f77

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f76

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v5}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_5

    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f6a

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f69

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v5}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_5

    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f6e

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f6d

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v5}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_5

    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f61

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040f60

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    nop

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x64 -> :sswitch_4
        0x65 -> :sswitch_3
        0x66 -> :sswitch_2
        0x7f -> :sswitch_1
        0x8c -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist initUI(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->initAlertParams(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->setupAlert()V

    return-void
.end method

.method private blacklist isChinaDevice()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$initAlertParams$0(ILandroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist rejectInstall()V
    .locals 3

    const-string v0, "UnknownSourceAppManager"

    const-string v1, "Reject installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnknownSourceAppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->rejectInstall()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->allowInstall()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->initUI(I)V

    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->rejectInstall()V

    :cond_0
    return-void
.end method
