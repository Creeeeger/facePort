.class Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper$1;
.super Ljava/util/logging/Formatter;
.source "ThemeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->-$$Nest$sfgetdate()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->-$$Nest$sfgetformatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Landroid/content/om/wallpapertheme/ThemeUtil$LogWrapper;->-$$Nest$sfgetdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
