.class Landroid/widget/AnalogClock$2;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AnalogClock;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AnalogClock;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    iget-object v0, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v0, p0}, Landroid/widget/AnalogClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v0}, Landroid/widget/AnalogClock;->-$$Nest$fgetmVisible(Landroid/widget/AnalogClock;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v0}, Landroid/widget/AnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v1}, Landroid/widget/AnalogClock;->-$$Nest$fgetmClock(Landroid/widget/AnalogClock;)Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v3}, Landroid/widget/AnalogClock;->-$$Nest$fgetmSecondHand(Landroid/widget/AnalogClock;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v3}, Landroid/widget/AnalogClock;->-$$Nest$fgetmSecondsHandFps(Landroid/widget/AnalogClock;)I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    iget-object v3, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v3}, Landroid/widget/AnalogClock;->-$$Nest$fgetmSecondsHandFps(Landroid/widget/AnalogClock;)I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v8

    long-to-double v8, v6

    rem-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v12, v8

    sub-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    cmp-long v3, v12, v4

    if-gtz v3, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    goto :goto_2

    :cond_2
    :goto_0
    const-wide/16 v6, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Duration;->toMillis()J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-gtz v4, :cond_3

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_1

    :cond_3
    move-wide v12, v8

    :goto_1
    nop

    :cond_4
    :goto_2
    iget-object v3, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v3, p0, v12, v13}, Landroid/widget/AnalogClock;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Landroid/widget/AnalogClock;->-$$Nest$monTimeChanged(Landroid/widget/AnalogClock;Ljava/time/LocalTime;J)V

    iget-object v3, p0, Landroid/widget/AnalogClock$2;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v3}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method
