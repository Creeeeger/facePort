.class public Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;
.super Ljava/lang/Object;
.source "AppShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;
    }
.end annotation


# direct methods
.method public static getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;
    .locals 8

    const-string v0, "AppShortcutInfo"

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_application_shortcut"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const-string v3, ""

    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, ";"

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    array-length v4, v1

    if-gt v4, p1, :cond_1

    return-object v2

    .line 93
    :cond_1
    aget-object p1, v1, p1

    if-eqz p1, :cond_7

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x2f

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 99
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "NoUnlockNeeded"

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Dnd"

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lock_app_shortcut_dnd_app_label:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 107
    iput-boolean v5, p2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z

    goto :goto_0

    :cond_3
    const-string v1, "Flashlight"

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lock_app_shortcut_flashlight_app_label:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 112
    iput-boolean v5, p2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x200

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    .line 120
    invoke-static {p0, v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isEnabledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isEnabledComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v3, v5

    :cond_5
    iput-boolean v3, p2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->isActive:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    const-string p0, "ClassCastException occured"

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "cannot find app name !"

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    :cond_6
    :goto_0
    return-object p2

    :cond_7
    :goto_1
    return-object v2
.end method

.method public static getShortcutStatus(Landroid/content/Context;I)Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_application_shortcut"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ";"

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 154
    aget-object p0, p0, p1

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "AppShortcutInfo"

    const-string p1, "Shortcut status is null !"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
