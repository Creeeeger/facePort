.class Landroidx/picker/widget/SeslSpinningDatePicker$LunarUtils;
.super Ljava/lang/Object;
.source "SeslSpinningDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LunarUtils"
.end annotation


# static fields
.field private static mClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;
    .locals 4

    const-string v0, "SeslSpinningDatePicker"

    .line 3002
    sget-object v1, Landroidx/picker/widget/SeslSpinningDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v1, :cond_3

    .line 3003
    invoke-static {}, Landroidx/picker/widget/SeslSpinningDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3006
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "getPathClassLoader, appInfo is null"

    .line 3009
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3012
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 3017
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3022
    :cond_1
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "getPathClassLoader, calendar package source directory is null or empty"

    .line 3018
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    const-string p0, "getPathClassLoader, calendar package name not found"

    .line 3014
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3024
    :cond_3
    :goto_1
    sget-object p0, Landroidx/picker/widget/SeslSpinningDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-object p0
.end method
