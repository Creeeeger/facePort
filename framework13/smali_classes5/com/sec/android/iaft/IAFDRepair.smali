.class Lcom/sec/android/iaft/IAFDRepair;
.super Ljava/lang/Object;
.source "IAFDRepair.java"


# static fields
.field public static final blacklist EXP_REPAIRMODE_ONEACTIVITY:I = 0x2

.field public static final blacklist EXP_REPAIRMODE_ONEKEY:I = 0x1

.field public static final blacklist EXP_REPAIR_CANNOT:I = 0x0

.field public static final blacklist EXP_REPAIR_ISOLABLE:I = 0x2

.field public static final blacklist EXP_REPAIR_PILE:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist repair_NoEnoughSpace(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "expType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "result":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v0, 0x1

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private blacklist repair_NoSettingsProvidersForDual(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "dualuid"    # I

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pm install-existing --user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " com.android.providers.settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private blacklist repair_WebView(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "expType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "result":Z
    return v0
.end method

.method private blacklist repair_allfile(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "expType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 59
    .local v2, "opMode":I
    :try_start_0
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 60
    .local v3, "appOps":Landroid/app/AppOpsManager;
    const/4 v4, 0x0

    invoke-virtual {v1, p3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 61
    .local v4, "appinfo":Landroid/content/pm/ApplicationInfo;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_0

    .line 62
    const-string v5, "android:manage_external_storage"

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    move v2, v5

    .line 64
    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 65
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    .line 73
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 71
    .end local v3    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist repairHandle(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "ct"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "result":Z
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 25
    .local v1, "exptype":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v1, v2}, Lcom/sec/android/iaft/IAFDHotfix;->hotfix(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 28
    if-nez v0, :cond_0

    .line 29
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 40
    :sswitch_0
    const-string v3, "dualUserId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 41
    .local v3, "dualuid":I
    invoke-direct {p0, p1, v3}, Lcom/sec/android/iaft/IAFDRepair;->repair_NoSettingsProvidersForDual(Landroid/content/Context;I)Z

    move-result v4

    move v0, v4

    .line 42
    goto :goto_0

    .line 37
    .end local v3    # "dualuid":I
    :sswitch_1
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/iaft/IAFDRepair;->repair_NoEnoughSpace(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 38
    goto :goto_0

    .line 31
    :sswitch_2
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/iaft/IAFDRepair;->repair_allfile(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 32
    goto :goto_0

    .line 34
    :sswitch_3
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/iaft/IAFDRepair;->repair_WebView(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 48
    :cond_0
    :goto_0
    goto :goto_1

    .line 46
    :catch_0
    move-exception v3

    .line 49
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x1b -> :sswitch_2
        0x22 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method
