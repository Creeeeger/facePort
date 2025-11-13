.class public final synthetic Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/time/LocalTime;

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$$ExternalSyntheticLambda1;->f$0:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
