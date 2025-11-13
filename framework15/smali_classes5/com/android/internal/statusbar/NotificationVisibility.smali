.class public Lcom/android/internal/statusbar/NotificationVisibility;
.super Ljava/lang/Object;
.source "NotificationVisibility.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x19

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NoViz"

.field private static greylist-max-o sNexrId:I


# instance fields
.field public greylist-max-o count:I

.field greylist-max-o id:I

.field public greylist-max-o key:Ljava/lang/String;

.field public blacklist location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public greylist-max-o rank:I

.field public greylist-max-o visible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smobtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    sget v0, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->id:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/statusbar/NotificationVisibility;-><init>()V

    iput-object p1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iput p3, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iput-boolean p4, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    iput-object p5, p0, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-void
.end method

.method private static greylist-max-o obtain()Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    invoke-static {}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static greylist-max-o obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1

    invoke-static {}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    iput-object p0, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iput p1, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iput p2, v0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iput-boolean p3, v0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    iput-object p4, v0, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->valueOf(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    iget-boolean v3, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    iget-object v4, p0, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/statusbar/NotificationVisibility;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 0

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationVisibility(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    if-eqz v1, :cond_0

    const-string v1, " visible"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
