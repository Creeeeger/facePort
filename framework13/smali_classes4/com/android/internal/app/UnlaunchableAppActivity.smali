.class public Lcom/android/internal/app/UnlaunchableAppActivity;
.super Landroid/app/Activity;
.source "UnlaunchableAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final blacklist TAG:Ljava/lang/String; = "UnlaunchableAppActivity"

.field private static final blacklist UNLAUNCHABLE_REASON_QUIET_MODE:I = 0x1


# instance fields
.field private blacklist mReason:I

.field private blacklist mTarget:Landroid/content/IntentSender;

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final blacklist createBaseIntent()Landroid/content/Intent;
    .locals 4

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "userId"    # I

    .line 142
    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "target"    # Landroid/content/IntentSender;

    .line 149
    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    return-object v0
.end method

.method private blacklist getDialogMessage()Ljava/lang/String;
    .locals 3

    .line 114
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDialogTitle()Ljava/lang/String;
    .locals 3

    .line 109
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkProfileName()Ljava/lang/String;
    .locals 2

    .line 104
    const-string v0, "getContainerLabel"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 105
    .local v1, "knoxInfo":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$getDialogMessage$1$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;
    .locals 3

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWorkProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1040f7b

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getDialogTitle$0$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;
    .locals 3

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWorkProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1040f7c

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$onClick$2$com-android-internal-app-UnlaunchableAppActivity(Landroid/os/UserManager;)V
    .locals 3
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 129
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 130
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    .line 129
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 126
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 127
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 128
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_0
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "unlaunchable_reason"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    .line 65
    const-string v2, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 66
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    .line 68
    iget v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    const-string v5, "UnlaunchableAppActivity"

    if-ne v2, v4, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Stopping."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 71
    return-void

    .line 75
    :cond_0
    const/4 v2, 0x0

    .line 76
    .local v2, "dialogMessage":Ljava/lang/String;
    iget v4, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    if-ne v4, v0, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogTitle()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "dialogTitle":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 88
    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 89
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    iget v6, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v7, 0x0

    if-ne v6, v0, :cond_1

    .line 90
    const v6, 0x1040f7e

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v8, 0x1040000

    .line 91
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 93
    :cond_1
    const v6, 0x104000a

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    :goto_0
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 96
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->create()V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 99
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 100
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 101
    return-void

    .line 80
    .end local v4    # "dialogTitle":Ljava/lang/String;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unlaunchable type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 82
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 122
    return-void
.end method
