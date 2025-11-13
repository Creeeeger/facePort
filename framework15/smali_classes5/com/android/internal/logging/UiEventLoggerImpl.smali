.class public Lcom/android/internal/logging/UiEventLoggerImpl;
.super Ljava/lang/Object;
.source "UiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    nop

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    const/16 v2, 0x5a

    invoke-static {v2, v0, p2, p3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 7

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz p4, :cond_0

    nop

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v3

    const/16 v0, 0x104

    const/4 v5, 0x0

    move v1, v6

    move-object v2, p3

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    goto :goto_0

    :cond_0
    if-lez v6, :cond_1

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .locals 7

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x104

    move v1, v6

    move-object v2, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZ)V

    :cond_0
    return-void
.end method
