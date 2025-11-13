.class public Lcom/samsung/android/settings/wifi/develop/history/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static convertTimeToString(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 18
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verboseLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
