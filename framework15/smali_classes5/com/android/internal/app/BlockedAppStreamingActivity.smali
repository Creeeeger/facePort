.class public Lcom/android/internal/app/BlockedAppStreamingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BlockedAppStreamingActivity.java"


# static fields
.field private static final blacklist BLOCKED_COMPONENT_PLAYSTORE:Ljava/lang/String; = "com.android.vending"

.field private static final blacklist BLOCKED_COMPONENT_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final blacklist EXTRA_BLOCKED_ACTIVITY_INFO:Ljava/lang/String; = "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

.field private static final blacklist EXTRA_STREAMED_DEVICE:Ljava/lang/String; = "com.android.internal.app.extra.STREAMED_DEVICE"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String; = "BlockedAppStreamingActivity"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.STREAMED_DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

    const-class v3, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid activity info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BlockedAppStreamingActivity"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->finish()V

    return-void

    :cond_1
    const-string v3, "com.android.internal.app.extra.STREAMED_DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x10401f1

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x10401eb

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.vending"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x10401e9

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v6, 0x10401f2

    invoke-virtual {p0, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.settings"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x10401f3

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x10401ec

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x10401cb

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->setupAlert()V

    return-void
.end method
