.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final greylist-max-o SHOW_TIME:I

.field private static final greylist-max-o sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mLastDisplay:I

.field greylist-max-o mLastFormat:Ljava/text/DateFormat;

.field private blacklist mLocalTime:Ljava/time/LocalDateTime;

.field private greylist-max-o mNowText:Ljava/lang/String;

.field private greylist-max-o mShowRelativeTime:Z

.field private greylist-max-o mTimeMillis:J

.field private greylist-max-o mUpdateTimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 92
    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 97
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 98
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 99
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 101
    :pswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 102
    .local v5, "relative":Z
    invoke-virtual {p0, v5}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    .line 97
    .end local v4    # "attr":I
    .end local v5    # "relative":Z
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 4
    .param p0, "time"    # Ljava/time/LocalDateTime;
    .param p1, "zoneId"    # Ljava/time/ZoneId;

    .line 332
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 333
    .local v0, "tomorrow":Ljava/time/LocalDate;
    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 334
    .local v1, "nextMidnight":Ljava/time/LocalDateTime;
    invoke-static {v1, p1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I
    .locals 4
    .param p0, "start"    # Ljava/time/LocalDateTime;
    .param p1, "end"    # Ljava/time/LocalDateTime;

    .line 354
    sget-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 355
    invoke-virtual {p0, v2}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 354
    return v0
.end method

.method private greylist-max-o getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .line 359
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private blacklist maybeSetText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method public static greylist-max-o setReceiverHandler(Landroid/os/Handler;)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 427
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 428
    .local v1, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v1, :cond_0

    .line 429
    new-instance v2, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V

    move-object v1, v2

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 432
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    .line 433
    return-void
.end method

.method private static blacklist toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 3
    .param p0, "time"    # Ljava/time/LocalDateTime;
    .param p1, "zoneId"    # Ljava/time/ZoneId;

    .line 546
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    .line 547
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 2
    .param p0, "timeMillis"    # J
    .param p2, "zoneId"    # Ljava/time/ZoneId;

    .line 541
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 542
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {v0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o updateNowText()V
    .locals 2

    .line 345
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104088a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 350
    return-void
.end method

.method private greylist-max-o updateRelativeTime()V
    .locals 16

    .line 255
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 256
    .local v1, "now":J
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 259
    .local v3, "duration":J
    iget-wide v5, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 261
    .local v5, "past":Z
    :goto_0
    const-wide/32 v8, 0xea60

    cmp-long v10, v3, v8

    const-wide/16 v11, 0x1

    if-gez v10, :cond_1

    .line 262
    iget-object v6, v0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 263
    iget-wide v6, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v6, v8

    add-long/2addr v6, v11

    iput-wide v6, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 264
    return-void

    .line 265
    :cond_1
    const-wide/32 v13, 0x36ee80

    cmp-long v10, v3, v13

    if-gez v10, :cond_3

    .line 266
    div-long v8, v3, v8

    long-to-int v8, v8

    .line 267
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_2

    .line 268
    const v10, 0x104047e

    goto :goto_1

    .line 269
    :cond_2
    const v10, 0x104047f

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    .line 270
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v6

    .line 267
    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "result":Ljava/lang/String;
    const-wide/32 v9, 0xea60

    .local v9, "millisIncrease":J
    goto/16 :goto_7

    .line 272
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v9    # "millisIncrease":J
    :cond_3
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v3, v8

    if-gez v8, :cond_5

    .line 273
    div-long v8, v3, v13

    long-to-int v8, v8

    .line 274
    .restart local v8    # "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_4

    .line 275
    const v10, 0x104047a

    goto :goto_2

    .line 276
    :cond_4
    const v10, 0x104047b

    :goto_2
    new-array v7, v7, [Ljava/lang/Object;

    .line 277
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v6

    .line 274
    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .restart local v6    # "result":Ljava/lang/String;
    const-wide/32 v9, 0x36ee80

    .restart local v9    # "millisIncrease":J
    goto/16 :goto_7

    .line 279
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v9    # "millisIncrease":J
    :cond_5
    const-wide v8, 0x7528ad000L

    cmp-long v10, v3, v8

    if-gez v10, :cond_9

    .line 281
    iget-object v8, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 282
    .local v8, "localDateTime":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v9

    .line 283
    .local v9, "zoneId":Ljava/time/ZoneId;
    invoke-static {v1, v2, v9}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v10

    .line 285
    .local v10, "localNow":Ljava/time/LocalDateTime;
    invoke-static {v8, v10}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 286
    .local v13, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v5, :cond_6

    .line 287
    const v15, 0x1040476

    goto :goto_3

    .line 288
    :cond_6
    const v15, 0x1040477

    :goto_3
    new-array v11, v7, [Ljava/lang/Object;

    .line 289
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    .line 286
    invoke-virtual {v14, v15, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .restart local v6    # "result":Ljava/lang/String;
    if-nez v5, :cond_8

    if-eq v13, v7, :cond_7

    goto :goto_4

    .line 294
    :cond_7
    const-wide/32 v11, 0x5265c00

    move-wide v9, v11

    .local v11, "millisIncrease":J
    goto :goto_5

    .line 291
    .end local v11    # "millisIncrease":J
    :cond_8
    :goto_4
    invoke-static {v10, v9}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v11

    iput-wide v11, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 292
    const-wide/16 v11, -0x1

    move-wide v9, v11

    .line 297
    .end local v8    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v10    # "localNow":Ljava/time/LocalDateTime;
    .local v9, "millisIncrease":J
    :goto_5
    move v8, v13

    goto :goto_7

    .line 298
    .end local v6    # "result":Ljava/lang/String;
    .end local v9    # "millisIncrease":J
    .end local v13    # "count":I
    :cond_9
    div-long v8, v3, v8

    long-to-int v8, v8

    .line 299
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v5, :cond_a

    .line 300
    const v10, 0x1040482

    goto :goto_6

    .line 301
    :cond_a
    const v10, 0x1040483

    :goto_6
    new-array v7, v7, [Ljava/lang/Object;

    .line 302
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    .line 299
    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .restart local v6    # "result":Ljava/lang/String;
    const-wide v9, 0x7528ad000L

    .line 305
    .restart local v9    # "millisIncrease":J
    :goto_7
    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_c

    .line 306
    if-eqz v5, :cond_b

    .line 307
    iget-wide v11, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v7, v8, 0x1

    int-to-long v13, v7

    mul-long/2addr v13, v9

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_8

    .line 309
    :cond_b
    const-wide/16 v13, 0x1

    iget-wide v11, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v13, v8

    mul-long/2addr v13, v9

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 312
    :cond_c
    :goto_8
    invoke-direct {v0, v6}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 313
    return-void
.end method


# virtual methods
.method greylist-max-o clearFormatAndUpdate()V
    .locals 1

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 364
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 365
    return-void
.end method

.method public blacklist isShowRelativeTime()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 4

    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 112
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 113
    .local v1, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v1, :cond_0

    .line 114
    new-instance v2, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V

    move-object v1, v2

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 123
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 126
    :cond_1
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 339
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 340
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 341
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 342
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 131
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 132
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 135
    :cond_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 13
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 369
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 370
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_9

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 376
    .local v2, "duration":J
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 378
    .local v4, "past":Z
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v6, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    .line 380
    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .local v5, "result":Ljava/lang/String;
    goto/16 :goto_5

    .line 381
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    const-string v12, "count"

    if-gez v11, :cond_3

    .line 382
    div-long v7, v2, v7

    long-to-int v5, v7

    .line 383
    .local v5, "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    nop

    .line 385
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 387
    if-eqz v4, :cond_2

    const v8, 0x104047c

    goto :goto_1

    .line 388
    :cond_2
    const v8, 0x104047d

    .line 384
    :goto_1
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .local v7, "result":Ljava/lang/String;
    goto/16 :goto_5

    .line 389
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_5

    .line 390
    div-long v7, v2, v9

    long-to-int v5, v7

    .line 391
    .restart local v5    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    nop

    .line 393
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 395
    if-eqz v4, :cond_4

    const v8, 0x1040478

    goto :goto_2

    .line 396
    :cond_4
    const v8, 0x1040479

    .line 392
    :goto_2
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .restart local v7    # "result":Ljava/lang/String;
    goto :goto_5

    .line 397
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :cond_5
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    .line 399
    iget-object v7, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 400
    .local v7, "localDateTime":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    .line 401
    .local v8, "zoneId":Ljava/time/ZoneId;
    invoke-static {v0, v1, v8}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v9

    .line 403
    .local v9, "localNow":Ljava/time/LocalDateTime;
    invoke-static {v7, v9}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 404
    .restart local v5    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    nop

    .line 406
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 408
    if-eqz v4, :cond_6

    const v11, 0x1040474

    goto :goto_3

    .line 409
    :cond_6
    const v11, 0x1040475

    .line 405
    :goto_3
    invoke-static {v10, v6, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    .line 410
    .end local v8    # "zoneId":Ljava/time/ZoneId;
    .end local v9    # "localNow":Ljava/time/LocalDateTime;
    .local v7, "result":Ljava/lang/String;
    move-object v5, v7

    goto :goto_5

    .line 411
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :cond_7
    div-long v7, v2, v7

    long-to-int v5, v7

    .line 412
    .restart local v5    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    nop

    .line 414
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 416
    if-eqz v4, :cond_8

    const v8, 0x1040480

    goto :goto_4

    .line 417
    :cond_8
    const v8, 0x1040481

    .line 413
    :goto_4
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 419
    .local v5, "result":Ljava/lang/String;
    :goto_5
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .end local v0    # "now":J
    .end local v2    # "duration":J
    .end local v4    # "past":Z
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    return-void
.end method

.method public greylist-max-o setShowRelativeTime(Z)V
    .locals 0
    .param p1, "showRelativeTime"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 148
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 149
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 150
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 151
    return-void
.end method

.method public greylist setTime(J)V
    .locals 2
    .param p1, "timeMillis"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 140
    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 141
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 142
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 143
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 144
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 166
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, "gotVisible":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 171
    :cond_1
    return-void
.end method

.method greylist update()V
    .locals 23

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto/16 :goto_6

    .line 178
    :cond_0
    iget-boolean v1, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 180
    return-void

    .line 184
    :cond_1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 187
    .local v1, "zoneId":Ljava/time/ZoneId;
    iget-object v2, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 188
    .local v2, "localTime":Ljava/time/LocalDateTime;
    nop

    .line 189
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    sget-object v4, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 190
    .local v3, "localStartOfDay":Ljava/time/LocalDateTime;
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 192
    .local v4, "localTomorrowStartOfDay":Ljava/time/LocalDateTime;
    invoke-static {v1}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 194
    .local v5, "localNow":Ljava/time/LocalDateTime;
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v8

    .line 195
    .local v8, "twelveHoursBefore":J
    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    .line 196
    .local v6, "twelveHoursAfter":J
    invoke-static {v3, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v10

    .line 197
    .local v10, "midnightBefore":J
    invoke-static {v4, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v12

    .line 198
    .local v12, "midnightAfter":J
    invoke-static {v2, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v14

    .line 199
    .local v14, "time":J
    invoke-static {v5, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v16

    .line 203
    .local v16, "now":J
    cmp-long v18, v16, v10

    if-ltz v18, :cond_2

    cmp-long v18, v16, v12

    if-ltz v18, :cond_3

    :cond_2
    cmp-long v18, v16, v8

    if-ltz v18, :cond_4

    cmp-long v18, v16, v6

    if-gez v18, :cond_4

    .line 205
    :cond_3
    const/16 v18, 0x0

    .line 206
    .local v18, "display":I
    move-object/from16 v19, v1

    move/from16 v1, v18

    goto :goto_0

    .line 209
    .end local v18    # "display":I
    :cond_4
    const/16 v18, 0x1

    move-object/from16 v19, v1

    move/from16 v1, v18

    .line 215
    .local v1, "display":I
    .local v19, "zoneId":Ljava/time/ZoneId;
    :goto_0
    move-object/from16 v18, v2

    .end local v2    # "localTime":Ljava/time/LocalDateTime;
    .local v18, "localTime":Ljava/time/LocalDateTime;
    iget v2, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v1, v2, :cond_5

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .local v2, "format":Ljava/text/DateFormat;
    goto :goto_2

    .line 219
    .end local v2    # "format":Ljava/text/DateFormat;
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 227
    move-object/from16 v20, v3

    .end local v3    # "localStartOfDay":Ljava/time/LocalDateTime;
    .local v20, "localStartOfDay":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown display value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v20    # "localStartOfDay":Ljava/time/LocalDateTime;
    .restart local v3    # "localStartOfDay":Ljava/time/LocalDateTime;
    :pswitch_0
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 225
    .restart local v2    # "format":Ljava/text/DateFormat;
    goto :goto_1

    .line 221
    .end local v2    # "format":Ljava/text/DateFormat;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v2

    .line 222
    .restart local v2    # "format":Ljava/text/DateFormat;
    nop

    .line 229
    :goto_1
    iput-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 233
    :goto_2
    move-object/from16 v20, v3

    .end local v3    # "localStartOfDay":Ljava/time/LocalDateTime;
    .restart local v20    # "localStartOfDay":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "text":Ljava/lang/String;
    invoke-direct {v0, v3}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 237
    if-nez v1, :cond_7

    .line 239
    cmp-long v21, v6, v12

    if-lez v21, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v6

    goto :goto_3

    :cond_6
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v12

    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "text":Ljava/lang/String;
    .local v21, "format":Ljava/text/DateFormat;
    .local v22, "text":Ljava/lang/String;
    :goto_3
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    .line 242
    .end local v21    # "format":Ljava/text/DateFormat;
    .end local v22    # "text":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/DateFormat;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "text":Ljava/lang/String;
    .restart local v21    # "format":Ljava/text/DateFormat;
    .restart local v22    # "text":Ljava/lang/String;
    iget-wide v2, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_8

    .line 244
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_5

    .line 248
    :cond_8
    cmp-long v2, v8, v10

    if-gez v2, :cond_9

    .line 249
    move-wide v2, v8

    goto :goto_4

    :cond_9
    move-wide v2, v10

    :goto_4
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 252
    :goto_5
    return-void

    .line 176
    .end local v1    # "display":I
    .end local v4    # "localTomorrowStartOfDay":Ljava/time/LocalDateTime;
    .end local v5    # "localNow":Ljava/time/LocalDateTime;
    .end local v6    # "twelveHoursAfter":J
    .end local v8    # "twelveHoursBefore":J
    .end local v10    # "midnightBefore":J
    .end local v12    # "midnightAfter":J
    .end local v14    # "time":J
    .end local v16    # "now":J
    .end local v18    # "localTime":Ljava/time/LocalDateTime;
    .end local v19    # "zoneId":Ljava/time/ZoneId;
    .end local v20    # "localStartOfDay":Ljava/time/LocalDateTime;
    .end local v21    # "format":Ljava/text/DateFormat;
    .end local v22    # "text":Ljava/lang/String;
    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
