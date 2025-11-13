.class Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$1;
.super Ljava/util/logging/Formatter;
.source "SettingsEpisodeFileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$1;->val$dateFormat:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog$1;->val$dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
