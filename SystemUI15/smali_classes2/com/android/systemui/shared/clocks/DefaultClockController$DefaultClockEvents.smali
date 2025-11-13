.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockEvents;


# instance fields
.field public isReactiveTouchInteractionEnabled:Z

.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isReactiveTouchInteractionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->isReactiveTouchInteractionEnabled:Z

    return p0
.end method

.method public final onAlarmDataChanged(Lcom/android/systemui/plugins/clocks/AlarmData;)V
    .locals 0

    return-void
.end method

.method public final onColorPaletteChanged(Landroid/content/res/Resources;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    invoke-virtual {p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    return-void
.end method

.method public final onLocaleChanged(Ljava/util/Locale;)V
    .locals 3

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    const-wide/32 v0, 0x499602d2

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseNumerals:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->burmeseLineSpacing:F

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->defaultLineSpacing:F

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final onSeedColorChanged(Ljava/lang/Integer;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    iput-object p1, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iput-object p1, v1, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->smallClock:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    return-void
.end method

.method public final onTimeFormatChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->clocks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/shared/clocks/AnimatableClockView$onTimeZoneChanged$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$onTimeZoneChanged$1;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/TimeZone;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onWeatherDataChanged(Lcom/android/systemui/plugins/clocks/WeatherData;)V
    .locals 0

    return-void
.end method

.method public final onZenDataChanged(Lcom/android/systemui/plugins/clocks/ZenData;)V
    .locals 0

    return-void
.end method

.method public final setReactiveTouchInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockEvents;->isReactiveTouchInteractionEnabled:Z

    return-void
.end method
