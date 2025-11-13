.class public Lcom/android/internal/app/MaintenanceModeOutroActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeOutroActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExitButton:Landroid/widget/Button;

.field private blacklist mIsFold:Z

.field private blacklist mIsTablet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExitButton(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconfirmSecureLock(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->confirmSecureLock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexitMaintenanceMode(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->exitMaintenanceMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowDialog(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->showDialog()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsFold:Z

    return-void
.end method

.method private blacklist confirmSecureLock()V
    .locals 6

    .line 181
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 183
    const v1, 0x80ff

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    .line 188
    .local v1, "biometricPrompt":Landroid/hardware/biometrics/BiometricPrompt;
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    .line 210
    return-void
.end method

.method private blacklist exitMaintenanceMode()V
    .locals 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 215
    .local v0, "um":Landroid/os/UserManager;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    nop

    .end local v0    # "um":Landroid/os/UserManager;
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MaintenanceMode"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist setContentView(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 62
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 65
    .local v1, "isLandscape":Z
    :goto_0
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 66
    .local v3, "isPopOver":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPopOver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MaintenanceMode"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    const v5, 0x10203db

    const v6, 0x109002d

    if-eqz v4, :cond_4

    .line 69
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 72
    .local v5, "padding":I
    if-eqz v3, :cond_1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    const v6, 0x1050204

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 78
    :cond_1
    if-eqz v1, :cond_2

    .line 79
    const v6, 0x1050203

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 82
    :cond_2
    const v6, 0x1050202

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 86
    :cond_3
    :goto_1
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsFold:Z

    const v7, 0x109002e

    const/16 v8, 0x400

    if-eqz v4, :cond_9

    .line 88
    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v9, 0x5

    if-ne v4, v9, :cond_6

    .line 89
    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 93
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3

    .line 97
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 99
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 100
    .restart local v4    # "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 101
    .restart local v5    # "padding":I
    if-nez v3, :cond_8

    .line 102
    if-eqz v1, :cond_7

    .line 103
    const v6, 0x1050201

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 106
    :cond_7
    const v6, 0x1050200

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 110
    :cond_8
    :goto_2
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_3

    .line 113
    :cond_9
    if-eqz v1, :cond_a

    .line 114
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 117
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 122
    :goto_3
    const v4, 0x10203df

    invoke-virtual {p0, v4}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, "outroTextView":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v5, :cond_b

    .line 124
    const v5, 0x104070f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 126
    :cond_b
    const v5, 0x104070e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1060223

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 131
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v5, :cond_c

    .line 132
    const v5, 0x10203de

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 133
    .local v5, "imageView":Landroid/widget/ImageView;
    const v6, 0x1050221

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 137
    .end local v5    # "imageView":Landroid/widget/ImageView;
    :cond_c
    const v5, 0x10203dc

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    .line 138
    iget-boolean v6, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v6, :cond_d

    .line 139
    const v6, 0x10501ff

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setWidth(I)V

    .line 142
    :cond_d
    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1050206

    .line 143
    invoke-static {v6, v7}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v6

    .line 142
    invoke-virtual {v5, v2, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 144
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/app/MaintenanceModeOutroActivity$1;

    invoke-direct {v5, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$1;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method private blacklist showDialog()V
    .locals 4

    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    iget-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 161
    const v1, 0x104070b

    goto :goto_0

    .line 162
    :cond_0
    const v1, 0x104070a

    .line 160
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406f6

    new-instance v2, Lcom/android/internal/app/MaintenanceModeOutroActivity$3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$3;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406f4

    new-instance v2, Lcom/android/internal/app/MaintenanceModeOutroActivity$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$2;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 176
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 177
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 156
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->finish()V

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsTablet:Z

    .line 56
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity;->mIsFold:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 59
    return-void
.end method
