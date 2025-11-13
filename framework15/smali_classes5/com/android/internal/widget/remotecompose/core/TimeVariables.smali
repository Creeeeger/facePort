.class public Lcom/android/internal/widget/remotecompose/core/TimeVariables;
.super Ljava/lang/Object;
.source "TimeVariables.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 10

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v4

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v5, v3

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    int-to-float v7, v6

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3089705f    # 1.0E-9f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/4 v8, 0x2

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/4 v8, 0x3

    int-to-float v9, v5

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/4 v8, 0x4

    int-to-float v9, v2

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    const/16 v8, 0x9

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void
.end method
