.class public Landroid/hardware/motion/MREvent;
.super Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
.source "MREvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist DIRECT_CALL:I = 0x44

.field public static final blacklist DIRECT_CALL_LEFT:I = 0x65

.field public static final blacklist DIRECT_CALL_RIGHT:I = 0x66

.field public static final blacklist FLIP_BOTTOM_TO_TOP:I = 0x56

.field public static final blacklist FLIP_TOP_TO_BOTTOM:I = 0xa

.field public static final blacklist LCD_UP_STEADY:I = 0x63

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist REACTIVE_ALERT:I = 0x43

.field public static final blacklist SMART_RELAY:I = 0x71


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    return-void
.end method
