.class public Landroid/hardware/scontext/SContextInactiveTimerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextInactiveTimerAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextInactiveTimerAttribute"


# instance fields
.field private blacklist mAlertCount:I

.field private blacklist mDeviceType:I

.field private blacklist mDuration:I

.field private blacklist mEndTime:I

.field private blacklist mStartTime:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 33
    const/16 v1, 0xe10

    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 37
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "duration"    # I
    .param p3, "alertCount"    # I
    .param p4, "startTime"    # I
    .param p5, "endTime"    # I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 33
    const/16 v1, 0xe10

    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 35
    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 37
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 39
    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 71
    iput p1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 72
    iput p2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 73
    iput p3, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 74
    iput p4, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 75
    iput p5, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    .line 77
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    const-string v2, "alert_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    const-string/jumbo v2, "start_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    const-string v2, "end_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 5

    .line 82
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SContextInactiveTimerAttribute"

    if-eq v0, v1, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 84
    const-string v0, "The deivce type is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v2

    .line 87
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 88
    const-string v0, "The duration is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v2

    .line 91
    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    if-gez v0, :cond_2

    .line 92
    const-string v0, "The alert count is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v2

    .line 95
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    if-gez v0, :cond_3

    .line 96
    const-string v0, "The start time is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 99
    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    if-gez v0, :cond_4

    .line 100
    const-string v0, "The end time is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 103
    :cond_4
    return v1
.end method
