.class public final Landroid/hardware/input/VirtualStylusMotionEvent;
.super Ljava/lang/Object;
.source "VirtualStylusMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualStylusMotionEvent$Builder;,
        Landroid/hardware/input/VirtualStylusMotionEvent$Action;,
        Landroid/hardware/input/VirtualStylusMotionEvent$ToolType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualStylusMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PRESSURE_MAX:I = 0xff

.field private static final blacklist PRESSURE_MIN:I = 0x0

.field private static final blacklist TILT_MAX:I = 0x5a

.field private static final blacklist TILT_MIN:I = -0x5a

.field public static final whitelist TOOL_TYPE_ERASER:I = 0x4

.field public static final whitelist TOOL_TYPE_STYLUS:I = 0x2

.field public static final blacklist TOOL_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mEventTimeNanos:J

.field private final blacklist mPressure:I

.field private final blacklist mTiltX:I

.field private final blacklist mTiltY:I

.field private final blacklist mToolType:I

.field private final blacklist mX:I

.field private final blacklist mY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/VirtualStylusMotionEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualStylusMotionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualStylusMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mToolType:I

    iput p2, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mAction:I

    iput p3, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mX:I

    iput p4, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mY:I

    iput p5, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mPressure:I

    iput p6, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltX:I

    iput p7, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltY:I

    iput-wide p8, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mEventTimeNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIIIJLandroid/hardware/input/VirtualStylusMotionEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/hardware/input/VirtualStylusMotionEvent;-><init>(IIIIIIIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mToolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mPressure:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mEventTimeNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualStylusMotionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusMotionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mAction:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getPressure()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mPressure:I

    return v0
.end method

.method public whitelist getTiltX()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltX:I

    return v0
.end method

.method public whitelist getTiltY()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltY:I

    return v0
.end method

.method public whitelist getToolType()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mToolType:I

    return v0
.end method

.method public whitelist getX()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mX:I

    return v0
.end method

.method public whitelist getY()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mY:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mPressure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mTiltY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
