.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mCalendar:Ljava/util/Calendar;

.field greylist-max-o mFormat:Ljava/lang/String;

.field private greylist-max-o mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mTicker:Ljava/lang/Runnable;

.field private greylist-max-o mTickerStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTicker(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTickerStopped(Landroid/widget/DigitalClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetFormat(Landroid/widget/DigitalClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    return-void
.end method

.method private greylist-max-o initClock()V
    .locals 1

    iget-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    :cond_0
    return-void
.end method

.method private greylist-max-o setFormat()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/DigitalClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
