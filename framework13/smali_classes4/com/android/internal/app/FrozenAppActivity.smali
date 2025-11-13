.class public Lcom/android/internal/app/FrozenAppActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FrozenAppActivity.java"


# static fields
.field private static final blacklist EXTRA_FROZEN_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.FROZEN_PACKAGE"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String; = "FrozenAppActivity"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/internal/app/FrozenAppActivity;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string v1, "com.android.internal.app.extra.FROZEN_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method private blacklist getAppLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/FrozenAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 69
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 70
    .end local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FrozenAppActivity"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p2
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/app/FrozenAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.USER_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "userId":I
    const-string v2, "FrozenAppActivity"

    if-gez v1, :cond_0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/app/FrozenAppActivity;->finish()V

    .line 48
    return-void

    .line 51
    :cond_0
    const-string v3, "com.android.internal.app.extra.FROZEN_PACKAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/FrozenAppActivity;->finish()V

    .line 55
    return-void

    .line 58
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/FrozenAppActivity;->getAppLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 59
    .local v2, "appLabel":Ljava/lang/CharSequence;
    const v4, 0x10401e2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/app/FrozenAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "toastMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/FrozenAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/FrozenAppActivity;->finish()V

    .line 62
    return-void
.end method
