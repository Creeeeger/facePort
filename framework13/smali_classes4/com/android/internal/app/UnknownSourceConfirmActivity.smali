.class public Lcom/android/internal/app/UnknownSourceConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UnknownSourceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final blacklist EXTRA_INSTALL_TYPE:Ljava/lang/String; = "android.content.pm.extra.unknown.installtype"

.field private static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field private static final blacklist TAG:Ljava/lang/String; = "UnknownSourceConfirmActivity"


# instance fields
.field private blacklist mButtonClicked:Z

.field private blacklist mSessionId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mButtonClicked:Z

    return-void
.end method

.method private blacklist allowInstall()V
    .locals 3

    .line 146
    const-string v0, "UnknownSourceConfirmActivity"

    const-string v1, "Allow installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    .line 148
    return-void
.end method

.method private blacklist initAlertParams(I)V
    .locals 5
    .param p1, "installType"    # I

    .line 44
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 46
    .local v0, "isTablet":Z
    const v1, 0x1040e49

    const v2, 0x1040e48

    const v3, 0x1040e45

    sparse-switch p1, :sswitch_data_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnknownSourceConfirmActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 86
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x1040e43

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x1040e42

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 98
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 100
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v2, Lcom/android/internal/app/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/UnknownSourceConfirmActivity;I)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    goto/16 :goto_2

    .line 65
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x1040e4c

    .line 69
    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x1040e4b

    .line 72
    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 77
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 79
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    goto :goto_2

    .line 55
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x1040e44

    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 56
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x1040e40

    invoke-virtual {p0, v4}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 57
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    invoke-virtual {p0, v3}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 59
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 61
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    goto :goto_2

    .line 48
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040e3f

    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040e3e

    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 50
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 51
    iget-object v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    nop

    .line 115
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist initUI(I)V
    .locals 2
    .param p1, "installType"    # I

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->initAlertParams(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->setupAlert()V

    .line 37
    return-void
.end method

.method private blacklist rejectInstall()V
    .locals 3

    .line 141
    const-string v0, "UnknownSourceConfirmActivity"

    const-string v1, "Reject installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    .line 143
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$initAlertParams$0$com-android-internal-app-UnknownSourceConfirmActivity(ILandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "installType"    # I
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mButtonClicked:Z

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/internal/app/UnknownSourcePhishingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget v1, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mSessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnknownSourceConfirmActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mButtonClicked:Z

    .line 129
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->rejectInstall()V

    .line 132
    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->allowInstall()V

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->finish()V

    .line 138
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mSessionId:I

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, "installType":I
    invoke-direct {p0, v0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->initUI(I)V

    .line 31
    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/app/UnknownSourceConfirmActivity;->mButtonClicked:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/internal/app/UnknownSourceConfirmActivity;->rejectInstall()V

    .line 123
    :cond_0
    return-void
.end method
