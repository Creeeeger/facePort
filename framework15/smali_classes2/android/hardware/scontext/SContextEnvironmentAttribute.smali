.class public Landroid/hardware/scontext/SContextEnvironmentAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextEnvironmentAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextEnvironmentAttribute"


# instance fields
.field private blacklist mSensorType:I

.field private blacklist mUpdateInterval:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    iput p1, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    iput p2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;->setAttribute()V

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sensor_type"

    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "update_interval"

    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x8

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    iget v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    const/4 v1, 0x0

    const-string v2, "SContextEnvironmentAttribute"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const-string v0, "The sensor type is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    if-gez v0, :cond_1

    const-string v0, "The update interval is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3
.end method
