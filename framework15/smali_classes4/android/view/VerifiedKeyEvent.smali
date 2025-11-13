.class public final Landroid/view/VerifiedKeyEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedKeyEvent$KeyEventAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedKeyEvent"


# instance fields
.field private blacklist mAction:I

.field private blacklist mDownTimeNanos:J

.field private blacklist mFlags:I

.field private blacklist mKeyCode:I

.field private blacklist mMetaState:I

.field private blacklist mRepeatCount:I

.field private blacklist mScanCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/VerifiedKeyEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedKeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJIIIJIIIII)V
    .locals 9

    move-object v7, p0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    move v0, p6

    iput v0, v7, Landroid/view/VerifiedKeyEvent;->mAction:I

    const-class v1, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v2, 0x0

    iget v3, v7, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-wide/from16 v1, p7

    iput-wide v1, v7, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    move/from16 v3, p9

    iput v3, v7, Landroid/view/VerifiedKeyEvent;->mFlags:I

    move/from16 v4, p10

    iput v4, v7, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    move/from16 v5, p11

    iput v5, v7, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    move/from16 v6, p12

    iput v6, v7, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    move/from16 v8, p13

    iput v8, v7, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    const-class v8, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v9, 0x0

    iget v10, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide v1, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iput v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iput v4, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iput v5, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iput v6, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iput v7, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

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

    check-cast v2, Landroid/view/VerifiedKeyEvent;

    nop

    invoke-super {p0, v2}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mAction:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

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

.method public whitelist getAction()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    return v0
.end method

.method public whitelist getDownTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFlag(I)Ljava/lang/Boolean;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

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
        0x20 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    return v0
.end method

.method public whitelist getKeyCode()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist getMetaState()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    return v0
.end method

.method public whitelist getRepeatCount()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return v0
.end method

.method public whitelist getScanCode()I
    .locals 1

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

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

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
