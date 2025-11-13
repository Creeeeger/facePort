.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# instance fields
.field public blacklist hour:I

.field private blacklist mZoneId:Ljava/time/ZoneId;

.field public blacklist minute:I

.field public blacklist monthDay:I

.field public blacklist monthOrdinal:I

.field public blacklist second:I

.field public blacklist year:I


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    return-void
.end method

.method public static blacklist fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .locals 9

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x0

    if-gt v1, v2, :cond_c

    if-gez v1, :cond_0

    goto :goto_6

    :cond_0
    const/16 v2, 0x60

    if-lt v1, v2, :cond_1

    add-int/lit16 v2, v1, 0x76c

    goto :goto_0

    :cond_1
    add-int/lit16 v2, v1, 0x7d0

    :goto_0
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    const/4 v2, 0x1

    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v4

    if-lt v4, v2, :cond_b

    const/16 v5, 0xc

    if-le v4, v5, :cond_2

    goto :goto_5

    :cond_2
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v5

    if-lt v5, v2, :cond_a

    const/16 v2, 0x1f

    if-le v5, v2, :cond_3

    goto :goto_4

    :cond_3
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    if-ltz v2, :cond_9

    const/16 v6, 0x17

    if-le v2, v6, :cond_4

    goto :goto_3

    :cond_4
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    const/4 v6, 0x4

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    if-ltz v6, :cond_8

    const/16 v7, 0x3b

    if-le v6, v7, :cond_5

    goto :goto_2

    :cond_5
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    const/4 v8, 0x5

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v8

    if-ltz v8, :cond_7

    if-le v8, v7, :cond_6

    goto :goto_1

    :cond_6
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    return-object v0

    :cond_7
    :goto_1
    return-object v3

    :cond_8
    :goto_2
    return-object v3

    :cond_9
    :goto_3
    return-object v3

    :cond_a
    :goto_4
    return-object v3

    :cond_b
    :goto_5
    return-object v3

    :cond_c
    :goto_6
    return-object v3
.end method

.method public static blacklist fromMillis(J)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .locals 4

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    nop

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    const/16 v3, 0x7cc

    if-lt v2, v3, :cond_1

    const/16 v3, 0x82f

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    return-object v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public blacklist toByteArray()[B
    .locals 4

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    div-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v0, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    rem-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    rem-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    rem-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    rem-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    rem-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist toMillis()J
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-static/range {v0 .. v5}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "BearerData"

    const-string v2, "Invalid timestamp"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", second="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
