.class public final Landroid/hardware/input/VirtualKeyEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualKeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualKeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mKeyCode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualKeyEvent;
    .locals 8

    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/hardware/input/VirtualKeyEvent;

    iget v3, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    iget v4, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    iget-wide v5, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mEventTimeNanos:J

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/input/VirtualKeyEvent;-><init>(IIJLandroid/hardware/input/VirtualKeyEvent-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual key event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    return-object p0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mEventTimeNanos:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setKeyCode(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    return-object p0
.end method
