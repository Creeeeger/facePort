.class Landroid/widget/SemExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "SemExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist REFRESH:I = -0x1


# instance fields
.field blacklist flPos:I

.field blacklist gId:J

.field blacklist gPos:I

.field blacklist lastChildFlPos:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/SemExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Landroid/widget/SemExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .locals 1

    new-instance v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Landroid/widget/SemExpandableListConnector$GroupMetadata;-><init>()V

    iput p0, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    iput p1, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iput p2, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iput-wide p3, v0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gId:J

    return-object v0
.end method


# virtual methods
.method public blacklist compareTo(Landroid/widget/SemExpandableListConnector$GroupMetadata;)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/SemExpandableListConnector$GroupMetadata;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->compareTo(Landroid/widget/SemExpandableListConnector$GroupMetadata;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/widget/SemExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
