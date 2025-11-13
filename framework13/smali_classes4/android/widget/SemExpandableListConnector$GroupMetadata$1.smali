.class Landroid/widget/SemExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "SemExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/SemExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 991
    nop

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 991
    invoke-static {v0, v1, v2, v3, v4}, Landroid/widget/SemExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 996
    .local v0, "gm":Landroid/widget/SemExpandableListConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 988
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/widget/SemExpandableListConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .line 1000
    new-array v0, p1, [Landroid/widget/SemExpandableListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 988
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListConnector$GroupMetadata$1;->newArray(I)[Landroid/widget/SemExpandableListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method
