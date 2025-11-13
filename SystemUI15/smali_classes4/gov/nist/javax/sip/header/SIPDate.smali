.class public Lgov/nist/javax/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7692bf68cdf8211dL


# instance fields
.field protected day:I

.field protected hour:I

.field private javaCal:Ljava/util/Calendar;

.field protected minute:I

.field protected month:I

.field protected second:I

.field protected sipMonth:Ljava/lang/String;

.field protected sipWkDay:Ljava/lang/String;

.field protected wkday:I

.field protected year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT:0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    const-string p2, "Unexepcted INTERNAL ERROR FIXME!!"

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No date map for wkday "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string p1, "Sat"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "Fri"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "Thu"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string p1, "Wed"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string p1, "Tue"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string p1, "Mon"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string p1, "Sun"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No date map for month "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    const-string p1, "Dec"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string p1, "Nov"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string p1, "Oct"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string p1, "Sep"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string p1, "Aug"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string p1, "Jul"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_d
    const-string p1, "Jun"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_e
    const-string p1, "May"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_f
    const-string p1, "Apr"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_10
    const-string p1, "Mar"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_11
    const-string p1, "Feb"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_12
    const-string p1, "Jan"

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    iput-object p0, v0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    :cond_0
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Internal error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lgov/nist/javax/sip/header/SIPDate;

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iget v1, p1, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iget v1, p1, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iget v1, p1, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iget v1, p1, Lgov/nist/javax/sip/header/SIPDate;->year:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iget v1, p1, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iget v1, p1, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    iget p1, p1, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
