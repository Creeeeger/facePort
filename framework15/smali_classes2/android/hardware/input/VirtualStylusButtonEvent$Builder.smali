.class public final Landroid/hardware/input/VirtualStylusButtonEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualStylusButtonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualStylusButtonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mButtonCode:I

.field private blacklist mEventTimeNanos:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mAction:I

    iput v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mButtonCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualStylusButtonEvent;
    .locals 8

    iget v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mButtonCode:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/hardware/input/VirtualStylusButtonEvent;

    iget v3, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mAction:I

    iget v4, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mButtonCode:I

    iget-wide v5, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mEventTimeNanos:J

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/input/VirtualStylusButtonEvent;-><init>(IIJLandroid/hardware/input/VirtualStylusButtonEvent-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus button event with unset button code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus button event with unset action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualStylusButtonEvent$Builder;
    .locals 3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stylus button action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mAction:I

    return-object p0
.end method

.method public whitelist setButtonCode(I)Landroid/hardware/input/VirtualStylusButtonEvent$Builder;
    .locals 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stylus button code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mButtonCode:I

    return-object p0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualStylusButtonEvent$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/hardware/input/VirtualStylusButtonEvent$Builder;->mEventTimeNanos:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
