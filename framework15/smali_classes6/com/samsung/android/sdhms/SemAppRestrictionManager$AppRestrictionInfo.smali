.class public Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
.super Ljava/lang/Object;
.source "SemAppRestrictionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemAppRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRestrictionInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist packageName:Ljava/lang/String;

.field private blacklist restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

.field private blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    const-class v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    iput-object p1, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    iput-object p3, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRestrictionInfo()Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->restrictionInfo:Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
