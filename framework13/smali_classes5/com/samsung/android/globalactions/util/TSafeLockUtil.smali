.class public Lcom/samsung/android/globalactions/util/TSafeLockUtil;
.super Ljava/lang/Object;
.source "TSafeLockUtil.java"


# static fields
.field private static final blacklist OFF_MENU_SETTING:Ljava/lang/String; = "off_menu_setting"

.field private static final blacklist TLOCK_PKG_NAME:Ljava/lang/String; = "com.skt.t_smart_charge"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/globalactions/util/TSafeLockUtil;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist isTSafeLock()Z
    .locals 6

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 21
    .local v1, "ret":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/samsung/android/globalactions/util/TSafeLockUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 24
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    const-string v4, "com.skt.t_smart_charge"

    invoke-virtual {v2, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 25
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 28
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 26
    :catch_0
    move-exception v4

    .line 30
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    iget-object v4, p0, Lcom/samsung/android/globalactions/util/TSafeLockUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "off_menu_setting"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v0, v3

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 34
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
