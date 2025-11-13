.class public final Landroid/hardware/input/VirtualMouseRelativeEvent;
.super Ljava/lang/Object;
.source "VirtualMouseRelativeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualMouseRelativeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEventTimeNanos:J

.field private final blacklist mRelativeX:F

.field private final blacklist mRelativeY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseRelativeEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    iput p2, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    iput-wide p3, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mEventTimeNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(FFJLandroid/hardware/input/VirtualMouseRelativeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(FFJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mEventTimeNanos:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseRelativeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getRelativeX()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    return v0
.end method

.method public whitelist getRelativeY()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualMouseRelativeEvent( x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eventTime(ns)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mEventTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
