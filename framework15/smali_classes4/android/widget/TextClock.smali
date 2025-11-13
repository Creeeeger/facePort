.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$ClockEventDelegate;,
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

.field private greylist-max-o mDescFormat:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private greylist-max-o mFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormatChangeObserver:Landroid/database/ContentObserver;

.field private greylist-max-o mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final greylist-max-o mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRegisterActionForComplicationWidget:Z

.field private greylist-max-o mRegistered:Z

.field private blacklist mShouldChooseFormat:Z

.field private greylist-max-o mShouldRunTicker:Z

.field private greylist-max-o mShowCurrentUserTime:Z

.field private greylist-max-o mStopTicking:Z

.field private final greylist-max-o mTicker:Ljava/lang/Runnable;

.field private greylist-max-o mTime:Ljava/util/Calendar;

.field private greylist-max-o mTimeZone:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasSeconds(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeZone(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mchooseFormat(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateTime(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v3, Lcom/android/internal/R$styleable;->TextClock:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static greylist-max-o abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private blacklist calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0x7ed

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    const/16 v6, 0x7ee

    const/16 v9, 0x14

    invoke-virtual {v3, v6, v7, v9}, Ljava/util/Calendar;->set(III)V

    const/16 v10, 0x7f1

    invoke-virtual {v4, v10, v7, v8}, Ljava/util/Calendar;->set(III)V

    const/16 v8, 0x7f2

    invoke-virtual {v5, v8, v7, v9}, Ljava/util/Calendar;->set(III)V

    const/4 v10, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x1

    :cond_2
    new-instance v11, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11}, Ljava/util/Date;->getYear()I

    move-result v14

    add-int/lit16 v14, v14, 0x76c

    invoke-virtual {v11}, Ljava/util/Date;->getMonth()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v9

    const/16 v8, 0xc

    new-array v6, v8, [I

    new-array v8, v8, [I

    const/16 v19, 0x0

    aput v19, v6, v19

    const/16 v20, 0x1f

    aput v20, v6, v13

    const/16 v21, 0x3b

    aput v21, v6, v7

    const/16 v21, 0x5a

    const/4 v7, 0x3

    aput v21, v6, v7

    const/16 v21, 0x78

    const/16 v22, 0x4

    aput v21, v6, v22

    const/16 v21, 0x97

    aput v21, v6, v12

    const/16 v21, 0xb5

    const/16 v23, 0x6

    aput v21, v6, v23

    const/16 v21, 0xd4

    const/16 v24, 0x7

    aput v21, v6, v24

    const/16 v21, 0xf3

    const/16 v25, 0x8

    aput v21, v6, v25

    const/16 v21, 0x111

    const/16 v26, 0x9

    aput v21, v6, v26

    const/16 v21, 0x130

    const/16 v27, 0xa

    aput v21, v6, v27

    const/16 v21, 0x14e

    const/16 v28, 0xb

    aput v21, v6, v28

    aput v19, v8, v19

    aput v20, v8, v13

    const/16 v19, 0x3c

    const/16 v21, 0x2

    aput v19, v8, v21

    const/16 v19, 0x5b

    aput v19, v8, v7

    const/16 v19, 0x79

    aput v19, v8, v22

    const/16 v19, 0x98

    aput v19, v8, v12

    const/16 v12, 0xb6

    aput v12, v8, v23

    const/16 v12, 0xd5

    aput v12, v8, v24

    const/16 v12, 0xf4

    aput v12, v8, v25

    const/16 v12, 0x112

    aput v12, v8, v26

    const/16 v12, 0x131

    aput v12, v8, v27

    const/16 v12, 0x14f

    aput v12, v8, v28

    rem-int/lit8 v12, v14, 0x4

    const/16 v7, 0xba

    if-eqz v12, :cond_6

    add-int/lit8 v12, v15, -0x1

    aget v12, v6, v12

    add-int/2addr v12, v9

    const/16 v13, 0x4f

    if-le v12, v13, :cond_4

    add-int/lit8 v12, v12, -0x4f

    if-gt v12, v7, :cond_3

    rem-int/lit8 v7, v12, 0x1f

    packed-switch v7, :pswitch_data_0

    div-int/lit8 v7, v12, 0x1f

    const/4 v13, 0x1

    add-int/2addr v7, v13

    rem-int/lit8 v12, v12, 0x1f

    goto :goto_0

    :pswitch_0
    div-int/lit8 v7, v12, 0x1f

    const/16 v12, 0x1f

    nop

    :goto_0
    add-int/lit16 v13, v14, -0x26d

    goto/16 :goto_8

    :cond_3
    sub-int/2addr v12, v7

    rem-int/lit8 v7, v12, 0x1e

    packed-switch v7, :pswitch_data_1

    div-int/lit8 v7, v12, 0x1e

    add-int/lit8 v7, v7, 0x7

    rem-int/lit8 v12, v12, 0x1e

    goto :goto_1

    :pswitch_1
    div-int/lit8 v7, v12, 0x1e

    add-int/lit8 v7, v7, 0x6

    const/16 v12, 0x1e

    nop

    :goto_1
    add-int/lit16 v13, v14, -0x26d

    goto/16 :goto_8

    :cond_4
    const/16 v7, 0x7cc

    if-le v14, v7, :cond_5

    rem-int/lit8 v7, v14, 0x4

    const/4 v13, 0x1

    if-ne v7, v13, :cond_5

    const/16 v7, 0xb

    goto :goto_2

    :cond_5
    const/16 v7, 0xa

    :goto_2
    add-int/2addr v12, v7

    rem-int/lit8 v13, v12, 0x1e

    packed-switch v13, :pswitch_data_2

    div-int/lit8 v13, v12, 0x1e

    add-int/lit8 v13, v13, 0xa

    rem-int/lit8 v12, v12, 0x1e

    goto :goto_3

    :pswitch_2
    div-int/lit8 v13, v12, 0x1e

    add-int/lit8 v13, v13, 0x9

    const/16 v12, 0x1e

    nop

    :goto_3
    add-int/lit16 v1, v14, -0x26e

    move v7, v13

    move v13, v1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v15, -0x1

    aget v1, v8, v1

    add-int/2addr v1, v9

    const/16 v12, 0x7cc

    if-lt v14, v12, :cond_7

    const/16 v12, 0x4f

    goto :goto_4

    :cond_7
    const/16 v12, 0x50

    :goto_4
    if-le v1, v12, :cond_9

    sub-int/2addr v1, v12

    if-gt v1, v7, :cond_8

    rem-int/lit8 v7, v1, 0x1f

    packed-switch v7, :pswitch_data_3

    div-int/lit8 v7, v1, 0x1f

    const/4 v13, 0x1

    add-int/2addr v7, v13

    rem-int/lit8 v1, v1, 0x1f

    goto :goto_5

    :pswitch_3
    div-int/lit8 v7, v1, 0x1f

    const/16 v1, 0x1f

    nop

    :goto_5
    add-int/lit16 v13, v14, -0x26d

    move v12, v1

    goto :goto_8

    :cond_8
    sub-int/2addr v1, v7

    rem-int/lit8 v7, v1, 0x1e

    packed-switch v7, :pswitch_data_4

    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x7

    rem-int/lit8 v1, v1, 0x1e

    goto :goto_6

    :pswitch_4
    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x6

    const/16 v1, 0x1e

    nop

    :goto_6
    add-int/lit16 v13, v14, -0x26d

    move v12, v1

    goto :goto_8

    :cond_9
    add-int/lit8 v1, v1, 0xa

    rem-int/lit8 v7, v1, 0x1e

    packed-switch v7, :pswitch_data_5

    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0xa

    rem-int/lit8 v1, v1, 0x1e

    goto :goto_7

    :pswitch_5
    div-int/lit8 v7, v1, 0x1e

    add-int/lit8 v7, v7, 0x9

    const/16 v1, 0x1e

    nop

    :goto_7
    add-int/lit16 v13, v14, -0x26e

    move v12, v1

    :goto_8
    if-nez v10, :cond_b

    const/16 v1, 0x7ee

    if-eq v14, v1, :cond_a

    const/16 v1, 0x7f2

    if-ne v14, v1, :cond_b

    :cond_a
    const/4 v1, 0x3

    if-ne v15, v1, :cond_b

    const/16 v1, 0x14

    if-ne v9, v1, :cond_b

    add-int/lit8 v12, v12, 0x1

    :cond_b
    const-string v1, ""

    const/16 v16, 0x0

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v16, 0x1

    :cond_c
    packed-switch v7, :pswitch_data_6

    move-object/from16 v1, v17

    goto/16 :goto_15

    :pswitch_6
    if-eqz v16, :cond_d

    const-string v0, "Esfand"

    goto :goto_9

    :cond_d
    const-string/jumbo v0, "\u0627\u0633??\u062f"

    :goto_9
    move-object v1, v0

    goto/16 :goto_15

    :pswitch_7
    if-eqz v16, :cond_e

    const-string v0, "Bahman"

    goto :goto_a

    :cond_e
    const-string/jumbo v0, "\u0628???"

    :goto_a
    move-object v1, v0

    goto/16 :goto_15

    :pswitch_8
    if-eqz v16, :cond_f

    const-string v0, "Dey"

    goto :goto_b

    :cond_f
    const-string/jumbo v0, "\u062f?"

    :goto_b
    move-object v1, v0

    goto/16 :goto_15

    :pswitch_9
    if-eqz v16, :cond_10

    const-string v0, "Azar"

    goto :goto_c

    :cond_10
    const-string/jumbo v0, "\u0622\u0630\u0631"

    :goto_c
    move-object v1, v0

    goto/16 :goto_15

    :pswitch_a
    if-eqz v16, :cond_11

    const-string v0, "Aban"

    goto :goto_d

    :cond_11
    const-string/jumbo v0, "\u0622\u0628\u0627?"

    :goto_d
    move-object v1, v0

    goto :goto_15

    :pswitch_b
    if-eqz v16, :cond_12

    const-string v0, "Mehr"

    goto :goto_e

    :cond_12
    const-string v0, "??\u0631"

    :goto_e
    move-object v1, v0

    goto :goto_15

    :pswitch_c
    if-eqz v16, :cond_13

    const-string v0, "Shahrivar"

    goto :goto_f

    :cond_13
    const-string/jumbo v0, "\u0634?\u0631??\u0631"

    :goto_f
    move-object v1, v0

    goto :goto_15

    :pswitch_d
    if-eqz v16, :cond_14

    const-string v0, "Mordad"

    goto :goto_10

    :cond_14
    const-string v0, "?\u0631\u062f\u0627\u062f"

    :goto_10
    move-object v1, v0

    goto :goto_15

    :pswitch_e
    if-eqz v16, :cond_15

    const-string v0, "Tir"

    goto :goto_11

    :cond_15
    const-string/jumbo v0, "\u062a?\u0631"

    :goto_11
    move-object v1, v0

    goto :goto_15

    :pswitch_f
    if-eqz v16, :cond_16

    const-string v0, "Khordad"

    goto :goto_12

    :cond_16
    const-string/jumbo v0, "\u062e\u0631\u062f\u0627\u062f"

    :goto_12
    move-object v1, v0

    goto :goto_15

    :pswitch_10
    if-eqz v16, :cond_17

    const-string v0, "Ordibehesht"

    goto :goto_13

    :cond_17
    const-string/jumbo v0, "\u0627\u0631\u062f?\u0628?\u0634\u062a"

    :goto_13
    move-object v1, v0

    goto :goto_15

    :pswitch_11
    if-eqz v16, :cond_18

    const-string v0, "Farvardin"

    goto :goto_14

    :cond_18
    const-string v0, "?\u0631?\u0631\u062f??"

    :goto_14
    move-object v1, v0

    nop

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v3

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
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
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o chooseFormat()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const-string v3, "Hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const-string v3, "hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-boolean v2, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private greylist-max-o createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private blacklist getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o init()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, "Hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_1
    new-instance v0, Landroid/widget/TextClock$ClockEventDelegate;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method private greylist onTimeChanged()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private greylist-max-o registerObserver()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextClock$ClockEventDelegate;->registerFormatChangeObserver(Landroid/database/ContentObserver;I)V

    :cond_2
    return-void
.end method

.method private greylist-max-o unregisterObserver()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterFormatChangeObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist disableClockTick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "format12Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "format24Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "format"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist-max-r getFormat()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public greylist hidden_semRegisterActionForComplicationWidget(Z)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegisterActionForComplicationWidget:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/widget/TextClock;->mRegisterActionForComplicationWidget:Z

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerComplicationTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    :cond_1
    return-void
.end method

.method public whitelist is24HourModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegisterActionForComplicationWidget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerComplicationTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    :goto_0
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist refreshTime()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/widget/TextClock;->invalidate()V

    return-void
.end method

.method public blacklist setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Clock events already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public whitelist setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public whitelist setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public greylist-max-o setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method
