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

.field private static final greylist-max-o SHOW_TIME:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DateTimeView"

.field private static final greylist-max-o sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sTimeFormat:Ljava/text/DateFormat;


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

.method static bridge synthetic blacklist -$$Nest$sfputsTimeFormat(Ljava/text/DateFormat;)V
    .locals 0

    sput-object p0, Landroid/widget/DateTimeView;->sTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 4

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I
    .locals 4

    sget-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p0, v2}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o getTimeFormat()Ljava/text/DateFormat;
    .locals 2

    const-string v0, "DateTimeView"

    const-string v1, "getTimeFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private blacklist maybeSetText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static greylist-max-o setReceiverHandler(Landroid/os/Handler;)V
    .locals 3

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V

    move-object v0, v1

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private static blacklist toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 3

    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 2

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o updateNowText()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104093c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o updateRelativeTime()V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/32 v6, 0xea60

    cmp-long v8, v2, v6

    const-wide/16 v9, 0x1

    if-gez v8, :cond_1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    iget-wide v11, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v11, v6

    add-long/2addr v11, v9

    iput-wide v11, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_1
    const-wide/32 v11, 0x36ee80

    cmp-long v8, v2, v11

    if-gez v8, :cond_3

    div-long v5, v2, v6

    long-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v4, :cond_2

    const v7, 0x10404b5

    goto :goto_1

    :cond_2
    const v7, 0x10404b6

    :goto_1
    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/32 v7, 0xea60

    goto/16 :goto_7

    :cond_3
    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-gez v6, :cond_5

    div-long v5, v2, v11

    long-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v4, :cond_4

    const v7, 0x10404b1

    goto :goto_2

    :cond_4
    const v7, 0x10404b2

    :goto_2
    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/32 v7, 0x36ee80

    goto/16 :goto_7

    :cond_5
    const-wide v6, 0x7528ad000L

    cmp-long v8, v2, v6

    if-gez v8, :cond_9

    iget-object v6, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-static {v0, v1, v7}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v4, :cond_6

    const v13, 0x10404ad

    goto :goto_3

    :cond_6
    const v13, 0x10404ae

    :goto_3
    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-nez v4, :cond_8

    if-eq v11, v5, :cond_7

    goto :goto_4

    :cond_7
    const-wide/32 v13, 0x5265c00

    move-wide v7, v13

    goto :goto_5

    :cond_8
    :goto_4
    invoke-static {v8, v7}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v13

    iput-wide v13, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    const-wide/16 v13, -0x1

    move-wide v7, v13

    :goto_5
    move v5, v11

    move-object v6, v12

    goto :goto_7

    :cond_9
    div-long v5, v2, v6

    long-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v4, :cond_a

    const v7, 0x10404b9

    goto :goto_6

    :cond_a
    const v7, 0x10404ba

    :goto_6
    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x7528ad000L

    :goto_7
    const-wide/16 v11, -0x1

    cmp-long v11, v7, v11

    if-eqz v11, :cond_c

    if-eqz v4, :cond_b

    iget-wide v11, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v13, v5, 0x1

    int-to-long v13, v13

    mul-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v11, v9

    iput-wide v11, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_8

    :cond_b
    iget-wide v11, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v13, v5

    mul-long/2addr v13, v7

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    iput-wide v11, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :cond_c
    :goto_8
    invoke-direct {p0, v6}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method greylist-max-o clearFormatAndUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public blacklist isShowRelativeTime()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V

    move-object v0, v1

    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    iget-boolean v1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_1
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    const-string v12, "count"

    if-gez v11, :cond_3

    div-long v7, v2, v7

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_2

    const v8, 0x10404b3

    goto :goto_1

    :cond_2
    const v8, 0x10404b4

    :goto_1
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto/16 :goto_5

    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_5

    div-long v7, v2, v9

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_4

    const v8, 0x10404af

    goto :goto_2

    :cond_4
    const v8, 0x10404b0

    :goto_2
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_5

    :cond_5
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    iget-object v7, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v0, v1, v8}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v4, :cond_6

    const v11, 0x10404ab

    goto :goto_3

    :cond_6
    const v11, 0x10404ac

    :goto_3
    invoke-static {v10, v6, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_5

    :cond_7
    div-long v7, v2, v7

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_8

    const v8, 0x10404b7

    goto :goto_4

    :cond_8
    const v8, 0x10404b8

    :goto_4
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    :goto_5
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public greylist-max-o setShowRelativeTime(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public greylist setTime(J)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_1
    return-void
.end method

.method greylist update()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v1, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    return-void

    :cond_1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    nop

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    sget-object v4, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-static {v1}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v5

    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v8

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    invoke-static {v3, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v10

    invoke-static {v4, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v12

    invoke-static {v2, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v14

    invoke-static {v5, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v16

    cmp-long v18, v16, v10

    if-ltz v18, :cond_2

    cmp-long v18, v16, v12

    if-ltz v18, :cond_3

    :cond_2
    cmp-long v18, v16, v8

    if-ltz v18, :cond_4

    cmp-long v18, v16, v6

    if-gez v18, :cond_4

    :cond_3
    const/16 v18, 0x0

    move-object/from16 v19, v1

    move/from16 v1, v18

    goto :goto_0

    :cond_4
    const/16 v18, 0x1

    move-object/from16 v19, v1

    move/from16 v1, v18

    :goto_0
    move-object/from16 v18, v2

    iget v2, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v1, v2, :cond_5

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_3

    :cond_5
    packed-switch v1, :pswitch_data_0

    move-object/from16 v20, v3

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

    :pswitch_0
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_2

    :pswitch_1
    sget-object v2, Landroid/widget/DateTimeView;->sTimeFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_6

    sget-object v2, Landroid/widget/DateTimeView;->sTimeFormat:Ljava/text/DateFormat;

    goto :goto_1

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v2

    :goto_1
    nop

    :goto_2
    iput-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    :goto_3
    move-object/from16 v20, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    if-nez v1, :cond_8

    cmp-long v21, v6, v12

    if-lez v21, :cond_7

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v6

    goto :goto_4

    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v12

    :goto_4
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_6

    :cond_8
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    iget-wide v2, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_9

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_6

    :cond_9
    cmp-long v2, v8, v10

    if-gez v2, :cond_a

    move-wide v2, v8

    goto :goto_5

    :cond_a
    move-wide v2, v10

    :goto_5
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :goto_6
    return-void

    :cond_b
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
