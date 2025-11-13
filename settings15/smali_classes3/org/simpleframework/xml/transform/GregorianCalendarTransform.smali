.class public final Lorg/simpleframework/xml/transform/GregorianCalendarTransform;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field public final transform:Lorg/simpleframework/xml/transform/DateTransform;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;->transform:Lorg/simpleframework/xml/transform/DateTransform;

    return-void
.end method


# virtual methods
.method public final read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;->transform:Lorg/simpleframework/xml/transform/DateTransform;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/DateTransform;->read(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    :cond_0
    return-object p1
.end method

.method public final write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/util/GregorianCalendar;

    iget-object p0, p0, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;->transform:Lorg/simpleframework/xml/transform/DateTransform;

    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/simpleframework/xml/transform/DateType;->getText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
