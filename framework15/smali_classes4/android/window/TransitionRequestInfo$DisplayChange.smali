.class public final Landroid/window/TransitionRequestInfo$DisplayChange;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayChange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$DisplayChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndRotation:I

.field private blacklist mPhysicalDisplayChanged:Z

.field private blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartRotation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionRequestInfo$DisplayChange$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$DisplayChange$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    iput v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    iput p2, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    iput p3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    iput v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_0
    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v3, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    iput-object v4, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    iput v5, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    iput v6, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    iput-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

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

.method public blacklist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    return v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartRotation()I
    .locals 1

    iget v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    return v0
.end method

.method public blacklist isPhysicalDisplayChanged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    return v0
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0

    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    return-object p0
.end method

.method public blacklist setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    return-object p0
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 0

    iput p1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayChange { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAbsBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDisplayChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mPhysicalDisplayChanged:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_1
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_3
    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_4
    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mStartRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/window/TransitionRequestInfo$DisplayChange;->mEndRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
