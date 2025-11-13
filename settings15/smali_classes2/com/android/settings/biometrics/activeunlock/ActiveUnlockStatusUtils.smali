.class public final Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final getAvailability()I
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "active_unlock_provider"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ActiveUnlockStatusUtils"

    if-nez v0, :cond_1

    const-string v0, "authority not set"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v2

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v5, 0x100000

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v0, "could not find provider"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_3

    const-string v4, "application info is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "authority not valid"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x2

    return p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "active_unlock_target"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ActiveUnlockStatusUtils"

    if-nez v0, :cond_0

    const-string p0, "Target action not set"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x20000

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Target activity not found"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_2

    const-string p0, "application info is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    :goto_0
    if-nez p0, :cond_3

    const-string p0, "Target application is not system"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const-string p0, "Target application is valid"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public final getTitleForActiveUnlock()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f142996

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f1429d3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const v2, 0x7f142a19

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusUtils;->getAvailability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
