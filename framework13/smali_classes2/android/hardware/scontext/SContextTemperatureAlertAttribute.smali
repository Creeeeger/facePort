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

    .line 40
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 33
    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(IIZ)V
    .locals 1
    .param p1, "lowTemperature"    # I
    .param p2, "highTemperature"    # I
    .param p3, "isIncluding"    # Z

    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 33
    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 58
    iput p1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 59
    iput p2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 60
    iput-boolean p3, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 61
    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    .line 62
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const-string v2, "low_temperature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const-string v2, "high_temperature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    iget-boolean v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    const-string v2, "including"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const/16 v1, 0x17

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 6

    .line 67
    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v1, -0x80

    const/4 v2, 0x0

    const-string v3, "SContextTemperatureAlertAttribute"

    if-lt v0, v1, :cond_4

    const/16 v4, 0x7f

    if-le v0, v4, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget v5, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-lt v5, v1, :cond_3

    if-le v5, v4, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    if-le v0, v5, :cond_2

    .line 78
    const-string v0, "The low temperature must be less than the high temperature."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v2

    .line 81
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_3
    :goto_0
    const-string v0, "The high temperature is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v2

    .line 69
    :cond_4
    :goto_1
    const-string v0, "The low temperature is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v2
.end method
