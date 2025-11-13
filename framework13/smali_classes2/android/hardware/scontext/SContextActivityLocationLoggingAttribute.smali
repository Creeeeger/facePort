.class public Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityLocationLoggingAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextActivityLocationLoggingAttribute"


# instance fields
.field private blacklist mAreaRadius:I

.field private blacklist mLppResolution:I

.field private blacklist mStayingRadius:I

.field private blacklist mStopPeriod:I

.field private blacklist mWaitPeriod:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 32
    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 36
    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 1
    .param p1, "stopPeriod"    # I
    .param p2, "waitPeriod"    # I
    .param p3, "statyingRadius"    # I
    .param p4, "areaRadius"    # I
    .param p5, "lppResolution"    # I

    .line 72
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 32
    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 36
    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 73
    iput p1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    .line 74
    iput p2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    .line 75
    iput p3, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    .line 76
    iput p4, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    .line 77
    iput p5, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    .line 78
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->setAttribute()V

    .line 79
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const-string/jumbo v2, "stop_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const-string/jumbo v2, "wait_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const-string/jumbo v2, "staying_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const-string v2, "area_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    const-string v2, "lpp_resolution"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const/16 v1, 0x18

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 116
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    .line 84
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/4 v1, 0x0

    const-string v2, "SContextActivityLocationLoggingAttribute"

    if-gez v0, :cond_0

    .line 85
    const-string v0, "The stop period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1

    .line 88
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    if-gez v0, :cond_1

    .line 89
    const-string v0, "The wait period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1

    .line 92
    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    if-gez v0, :cond_2

    .line 93
    const-string v0, "The staying radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v1

    .line 96
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    if-gez v0, :cond_3

    .line 97
    const-string v0, "The area radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 100
    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    if-ltz v0, :cond_5

    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    goto :goto_0

    .line 105
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_5
    :goto_0
    const-string v0, "The lpp resolution is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1
.end method
