.class public Lgov/nist/javax/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "SIPDate.java"

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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    .line 153
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 154
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    .line 155
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 156
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 157
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 158
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT:0"

    .line 169
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 172
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    packed-switch p1, :pswitch_data_0

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No date map for wkday "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "Sat"

    .line 191
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "Fri"

    .line 188
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "Thu"

    .line 185
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string p1, "Wed"

    .line 182
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string p1, "Tue"

    .line 179
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string p1, "Mon"

    .line 176
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string p1, "Sun"

    .line 194
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    .line 201
    :goto_0
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    .line 202
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    packed-switch p1, :pswitch_data_1

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No date map for month "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    const-string p1, "Dec"

    .line 238
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string p1, "Nov"

    .line 235
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string p1, "Oct"

    .line 232
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string p1, "Sep"

    .line 229
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string p1, "Aug"

    .line 226
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string p1, "Jul"

    .line 223
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_d
    const-string p1, "Jun"

    .line 220
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_e
    const-string p1, "May"

    .line 217
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_f
    const-string p1, "Apr"

    .line 214
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_10
    const-string p1, "Mar"

    .line 211
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_11
    const-string p1, "Feb"

    .line 208
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_12
    const-string p1, "Jan"

    .line 205
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    .line 244
    :goto_1
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    .line 246
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    .line 247
    iget-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    .line 248
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
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 520
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-eqz p0, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    iput-object p0, v0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    :cond_0
    return-object v0

    .line 522
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Internal error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode()Ljava/lang/String;
    .locals 7

    .line 258
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    const-string v1, "0"

    const/16 v2, 0xa

    const-string v3, ""

    if-ge v0, v2, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    iget v4, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ge v4, v2, :cond_1

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 267
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    :goto_1
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ge v5, v2, :cond_2

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 273
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    :goto_2
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ge v6, v2, :cond_3

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 279
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    :goto_3
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v6, " "

    if-eqz v2, :cond_4

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GMT"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 138
    :cond_0
    check-cast p1, Lgov/nist/javax/sip/header/SIPDate;

    .line 139
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
