.class public Landroid/hardware/scontext/SContextHallSensorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextHallSensorAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextHallSensorAttribute"


# instance fields
.field private blacklist mDisplayStatus:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextHallSensorAttribute;->setAttribute()V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "displayStatus"    # I

    .line 52
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    .line 53
    iput p1, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    .line 54
    invoke-direct {p0}, Landroid/hardware/scontext/SContextHallSensorAttribute;->setAttribute()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructor + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SContextHallSensorAttribute"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 4

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    const-string v2, "display_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hall sensor status   + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SContextHallSensorAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v1, 0x2b

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 2

    .line 75
    iget v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    if-ltz v0, :cond_1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_1
    :goto_0
    const-string v0, "SContextHallSensorAttribute"

    const-string v1, "The display status is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayStatus()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    return v0
.end method
