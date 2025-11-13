.class public final Landroid/window/BackMotionEvent;
.super Ljava/lang/Object;
.source "BackMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private final blacklist mProgress:F

.field private final blacklist mSwipeEdge:I

.field private final blacklist mTouchX:F

.field private final blacklist mTouchY:F

.field private final blacklist mTriggerBack:Z

.field private final blacklist mVelocityX:F

.field private final blacklist mVelocityY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/BackMotionEvent$1;

    invoke-direct {v0}, Landroid/window/BackMotionEvent$1;-><init>()V

    sput-object v0, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFFZILandroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    iput p2, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    iput p3, p0, Landroid/window/BackMotionEvent;->mProgress:F

    iput p4, p0, Landroid/window/BackMotionEvent;->mVelocityX:F

    iput p5, p0, Landroid/window/BackMotionEvent;->mVelocityY:F

    iput-boolean p6, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    iput p7, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    iput-object p8, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mVelocityX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mVelocityY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackMotionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/BackMotionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 1

    iget-object v0, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public blacklist getProgress()F
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    return v0
.end method

.method public blacklist getSwipeEdge()I
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    return v0
.end method

.method public blacklist getTouchX()F
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    return v0
.end method

.method public blacklist getTouchY()F
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    return v0
.end method

.method public blacklist getTriggerBack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    return v0
.end method

.method public blacklist getVelocityX()F
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mVelocityX:F

    return v0
.end method

.method public blacklist getVelocityY()F
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mVelocityY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackMotionEvent{mTouchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVelocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVelocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTriggerBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSwipeEdge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDepartingAnimationTarget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/BackMotionEvent;->mVelocityX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/BackMotionEvent;->mVelocityY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
