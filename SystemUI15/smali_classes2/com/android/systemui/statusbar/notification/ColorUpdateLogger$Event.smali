.class public final Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final extraValue:Ljava/lang/String;

.field public final notificationKey:Ljava/lang/String;

.field public final time:J

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->extraValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->notificationKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->time:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->dateFormat:Landroid/icu/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->extraValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Event;->notificationKey:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, " ---- "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method
