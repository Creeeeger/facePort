.class public final Lcom/android/systemui/util/EventLogImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/EventLog;


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeEvent(IF)I
    .locals 0

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(IF)I

    move-result p0

    return p0
.end method

.method public writeEvent(II)I
    .locals 0

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(II)I

    move-result p0

    return p0
.end method

.method public writeEvent(IJ)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/util/EventLog;->writeEvent(IJ)I

    move-result p0

    return p0
.end method

.method public writeEvent(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public varargs writeEvent(I[Ljava/lang/Object;)I
    .locals 0

    array-length p0, p2

    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
