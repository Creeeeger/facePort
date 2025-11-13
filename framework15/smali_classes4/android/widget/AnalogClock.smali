.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AnalogClock$TintInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AnalogClock"


# instance fields
.field private greylist-max-o mChanged:Z

.field private blacklist mClock:Ljava/time/Clock;

.field private blacklist mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

.field private greylist mDial:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDialHeight:I

.field private final blacklist mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private greylist-max-o mDialWidth:I

.field private greylist-max-o mHour:F

.field private greylist mHourHand:Landroid/graphics/drawable/Drawable;

.field private final blacklist mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private final greylist-max-o mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private greylist mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private greylist-max-o mMinutes:F

.field private blacklist mReceiverAttached:Z

.field private blacklist mSecondHand:Landroid/graphics/drawable/Drawable;

.field private final blacklist mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

.field private blacklist mSeconds:F

.field private final blacklist mSecondsHandFps:I

.field private final blacklist mTick:Ljava/lang/Runnable;

.field private blacklist mTimeZone:Ljava/time/ZoneId;

.field private blacklist mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Landroid/widget/AnalogClock;)Ljava/time/Clock;
    .locals 0

    iget-object p0, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondHand(Landroid/widget/AnalogClock;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondsHandFps(Landroid/widget/AnalogClock;)I
    .locals 0

    iget p0, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTick(Landroid/widget/AnalogClock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisible(Landroid/widget/AnalogClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateClock(Landroid/widget/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/AnalogClock;Ljava/time/LocalTime;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v9}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v0, v7, v9}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v0, v7, v9}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v0, Landroid/widget/AnalogClock$TintInfo;

    invoke-direct {v0, v7, v9}, Landroid/widget/AnalogClock$TintInfo;-><init>(Landroid/widget/AnalogClock;Landroid/widget/AnalogClock$TintInfo-IA;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    new-instance v0, Landroid/widget/AnalogClock$1;

    invoke-direct {v0, v7}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/AnalogClock$2;

    invoke-direct {v0, v7}, Landroid/widget/AnalogClock$2;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/TextClock$ClockEventDelegate;

    invoke-direct {v0, v8}, Landroid/widget/TextClock$ClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string/jumbo v1, "widget__analog_clock_seconds_hand_fps"

    invoke-static {v1, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    sget-object v0, Lcom/android/internal/R$styleable;->AnalogClock:[I

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual {v8, v10, v0, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AnalogClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    iget-object v0, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const v0, 0x10802c4

    invoke-virtual {v8, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v0, v2, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v2, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v2, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_1
    nop

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v2, v4, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v4, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v4, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_2
    iget-object v4, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v4, v4, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v4, :cond_3

    iget-object v4, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v4, v4, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v7, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v5, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v4, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    const v4, 0x10802c5

    invoke-virtual {v8, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_5
    const/4 v4, 0x7

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v4, v5, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v5, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v5, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_6
    nop

    const/16 v5, 0x8

    invoke-virtual {v13, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-static {v5, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v6, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v5, v6, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v6, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v6, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_7
    iget-object v6, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v6, v6, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v6, :cond_8

    iget-object v6, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v6, v6, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, v7, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v14, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v14}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_9
    const/4 v6, 0x2

    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v6, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_a

    const v6, 0x10802c6

    invoke-virtual {v8, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_a
    const/16 v6, 0x9

    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v14, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v6, v14, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v14, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v14, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_b
    nop

    const/16 v14, 0xa

    invoke-virtual {v13, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-static {v14, v9}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v14

    if-eqz v14, :cond_c

    iget-object v15, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v14, v15, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v15, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v15, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_c
    iget-object v15, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v15, v15, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v15, :cond_d

    iget-object v15, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v15, v15, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v15, :cond_e

    :cond_d
    iget-object v15, v7, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v9, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v9}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_e
    const/4 v9, 0x4

    invoke-virtual {v13, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0xb

    invoke-virtual {v13, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v15, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v9, v15, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v15, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v15, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    :cond_f
    nop

    const/16 v15, 0xc

    invoke-virtual {v13, v15, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v15, 0x0

    invoke-static {v3, v15}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v15, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object v3, v15, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v15, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-boolean v1, v15, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    :cond_10
    iget-object v1, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v1, v1, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_11

    iget-object v1, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v1, v1, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v1, :cond_12

    :cond_11
    iget-object v1, v7, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v15, v7, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v15}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    :cond_12
    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/AnalogClock;->toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    invoke-direct/range {p0 .. p0}, Landroid/widget/AnalogClock;->createClock()V

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v7, Landroid/widget/AnalogClock;->mDialWidth:I

    iget-object v1, v7, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v7, Landroid/widget/AnalogClock;->mDialHeight:I

    return-void
.end method

.method private blacklist createClock()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    :goto_0
    return-void
.end method

.method private blacklist onInvisible()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AnalogClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    :cond_0
    return-void
.end method

.method private blacklist onTimeChanged(Ljava/time/LocalTime;J)V
    .locals 6

    iget v0, p0, Landroid/widget/AnalogClock;->mHour:F

    iget v1, p0, Landroid/widget/AnalogClock;->mMinutes:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getSecond()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    nop

    iget v3, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_0
    iput v3, p0, Landroid/widget/AnalogClock;->mSeconds:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mSeconds:F

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AnalogClock;->mChanged:Z

    float-to-int v3, v0

    iget v4, p0, Landroid/widget/AnalogClock;->mHour:F

    float-to-int v4, v4

    if-ne v3, v4, :cond_1

    float-to-int v3, v1

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    float-to-int v4, v4

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/widget/AnalogClock;->updateContentDescription(J)V

    :cond_2
    return-void
.end method

.method private blacklist onVisible()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mVisible:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static blacklist toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse time zone from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnalogClock"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private blacklist updateContentDescription(J)V
    .locals 9

    const/16 v0, 0x81

    iget-object v1, p0, Landroid/widget/AnalogClock;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/Formatter;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getTimeZone()Ljava/lang/String;

    move-result-object v8

    const/16 v7, 0x81

    move-wide v3, p1

    move-wide v5, p1

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public whitelist getDialTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getDialTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getHourHandTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getHourHandTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getMinuteHandTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getMinuteHandTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getSecondHandTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getSecondHandTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v0, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected blacklist now()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Landroid/widget/AnalogClock;->mChanged:Z

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/AnalogClock;->mChanged:Z

    :cond_0
    iget v3, v0, Landroid/widget/AnalogClock;->mRight:I

    iget v4, v0, Landroid/widget/AnalogClock;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AnalogClock;->mBottom:I

    iget v5, v0, Landroid/widget/AnalogClock;->mTop:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    iget-object v7, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    const/4 v10, 0x0

    if-lt v3, v8, :cond_1

    if-ge v4, v9, :cond_2

    :cond_1
    const/4 v10, 0x1

    int-to-float v11, v3

    int-to-float v12, v8

    div-float/2addr v11, v12

    int-to-float v12, v4

    int-to-float v13, v9

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-virtual {v1, v11, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    if-eqz v2, :cond_3

    div-int/lit8 v11, v8, 0x2

    sub-int v11, v5, v11

    div-int/lit8 v12, v9, 0x2

    sub-int v12, v6, v12

    div-int/lit8 v13, v8, 0x2

    add-int/2addr v13, v5

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v6

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v0, Landroid/widget/AnalogClock;->mHour:F

    const/high16 v12, 0x41400000    # 12.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x43b40000    # 360.0f

    mul-float/2addr v11, v12

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v1, v11, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v11, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v12, v6, v16

    invoke-virtual {v11, v13, v14, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Landroid/widget/AnalogClock;->mMinutes:F

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    const/high16 v14, 0x43b40000    # 360.0f

    mul-float/2addr v12, v14

    int-to-float v14, v5

    int-to-float v15, v6

    invoke-virtual {v1, v12, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v12, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v14, v8, 0x2

    sub-int v14, v5, v14

    div-int/lit8 v15, v9, 0x2

    sub-int v15, v6, v15

    div-int/lit8 v16, v8, 0x2

    add-int v13, v5, v16

    div-int/lit8 v16, v9, 0x2

    move/from16 v17, v3

    add-int v3, v6, v16

    invoke-virtual {v12, v14, v15, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_5
    move/from16 v17, v3

    :goto_0
    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, v0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    iget v13, v0, Landroid/widget/AnalogClock;->mSecondsHandFps:I

    if-lez v13, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroid/widget/AnalogClock;->mSeconds:F

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    mul-float/2addr v13, v14

    int-to-float v14, v5

    int-to-float v15, v6

    invoke-virtual {v1, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v5, v13

    div-int/lit8 v14, v9, 0x2

    sub-int v14, v6, v14

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v5

    div-int/lit8 v16, v9, 0x2

    add-int v0, v6, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v6, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    if-ge v1, v6, :cond_0

    int-to-float v6, v1

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    div-float v4, v6, v7

    :cond_0
    if-eqz v2, :cond_1

    iget v6, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    if-ge v3, v6, :cond_1

    int-to-float v6, v3

    iget v7, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v7, v7

    div-float v5, v6, v7

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v9, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    invoke-static {v9, p2, v8}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/AnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    return-void
.end method

.method protected greylist-max-o onTimeChanged()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/AnalogClock;->onTimeChanged(Ljava/time/LocalTime;J)V

    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AnalogClock;->onVisible()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onInvisible()V

    :goto_0
    return-void
.end method

.method public blacklist setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mReceiverAttached:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Clock events already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/widget/AnalogClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    return-void
.end method

.method public whitelist setDial(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public whitelist setDialTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setDialTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mDialTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setHourHand(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public whitelist setHourHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setHourHandTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mHourHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setMinuteHand(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public whitelist setMinuteHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setMinuteHandTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setSecondHand(Landroid/graphics/drawable/Icon;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-boolean v0, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Landroid/widget/AnalogClock;->mTick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->invalidate()V

    return-void
.end method

.method public whitelist setSecondHandTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintBlendMode:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setSecondHandTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iput-object p1, v0, Landroid/widget/AnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AnalogClock$TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroid/widget/AnalogClock;->mSecondHandTintInfo:Landroid/widget/AnalogClock$TintInfo;

    iget-object v1, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/AnalogClock$TintInfo;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/widget/AnalogClock;->toZoneId(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AnalogClock;->mTimeZone:Ljava/time/ZoneId;

    invoke-direct {p0}, Landroid/widget/AnalogClock;->createClock()V

    invoke-virtual {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method
