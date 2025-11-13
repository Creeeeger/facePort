.class public final Landroid/util/secutil/LogSwitcher;
.super Ljava/lang/Object;
.source "LogSwitcher.java"


# static fields
.field public static blacklist isShowingGlobalLog:Z

.field public static blacklist isShowingSecDLog:Z

.field public static blacklist isShowingSecELog:Z

.field public static blacklist isShowingSecILog:Z

.field public static blacklist isShowingSecVLog:Z

.field public static blacklist isShowingSecWLog:Z

.field public static blacklist isShowingSecWtfLog:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 9
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 10
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 11
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 12
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 13
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 14
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    .line 19
    :try_start_0
    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 23
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 24
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 25
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 26
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 27
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 28
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 32
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
