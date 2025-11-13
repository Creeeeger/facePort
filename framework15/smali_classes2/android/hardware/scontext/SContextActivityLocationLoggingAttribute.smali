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

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    iput p1, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    iput p2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    iput p3, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    iput p4, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    iput p5, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "stop_period"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "wait_period"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "staying_radius"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "area_radius"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lpp_resolution"

    iget v2, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStopPeriod:I

    const/4 v1, 0x0

    const-string v2, "SContextActivityLocationLoggingAttribute"

    if-gez v0, :cond_0

    const-string v0, "The stop period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mWaitPeriod:I

    if-gez v0, :cond_1

    const-string v0, "The wait period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mStayingRadius:I

    if-gez v0, :cond_2

    const-string v0, "The staying radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mAreaRadius:I

    if-gez v0, :cond_3

    const-string v0, "The area radius is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;->mLppResolution:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const-string v0, "The lpp resolution is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
