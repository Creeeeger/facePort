.class public Landroid/hardware/scontext/SContextTemperatureAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextTemperatureAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextTemperatureAlertAttribute"


# instance fields
.field private blacklist mHighTemperature:I

.field private blacklist mIsIncluding:Z

.field private blacklist mLowTemperature:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    iput p1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    iput p2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    iput-boolean p3, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "low_temperature"

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "high_temperature"

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "including"

    iget-boolean v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x17

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 5

    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/4 v1, 0x0

    const-string v2, "SContextTemperatureAlertAttribute"

    const/16 v3, -0x80

    if-lt v0, v3, :cond_4

    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v4, 0x7f

    if-le v0, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    iget v3, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v3, :cond_2

    const-string v0, "The low temperature must be less than the high temperature."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const-string v0, "The high temperature is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    const-string v0, "The low temperature is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
