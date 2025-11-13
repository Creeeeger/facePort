.class public final Landroid/view/VerifiedMotionEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedMotionEvent$MotionEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedMotionEvent"


# instance fields
.field private blacklist mActionMasked:I

.field private blacklist mButtonState:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mMetaState:I

.field private blacklist mRawX:F

.field private blacklist mRawY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/VerifiedMotionEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedMotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIFFIJIII)V
    .locals 9

    move-object v7, p0

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    move v0, p6

    iput v0, v7, Landroid/view/VerifiedMotionEvent;->mRawX:F

    move/from16 v1, p7

    iput v1, v7, Landroid/view/VerifiedMotionEvent;->mRawY:F

    move/from16 v2, p8

    iput v2, v7, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    const-class v3, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v4, 0x0

    iget v5, v7, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-wide/from16 v3, p9

    iput-wide v3, v7, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    move/from16 v5, p11

    iput v5, v7, Landroid/view/VerifiedMotionEvent;->mFlags:I

    move/from16 v6, p12

    iput v6, v7, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    move/from16 v8, p13

    iput v8, v7, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iput v1, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iput v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    const-class v8, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v9, 0x0

    iget v10, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iput v5, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iput v6, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iput v7, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedMotionEvent;

    nop

    invoke-super {p0, v2}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mRawX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mRawY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getActionMasked()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    return v0
.end method

.method public whitelist getButtonState()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return v0
.end method

.method public whitelist getDownTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    return v0
.end method

.method public whitelist getMetaState()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    return v0
.end method

.method public whitelist getRawX()F
    .locals 1

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    return v0
.end method

.method public whitelist getRawY()F
    .locals 1

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
