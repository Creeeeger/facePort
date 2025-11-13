.class public Lcom/samsung/android/infoextraction/SemStrokeData;
.super Ljava/lang/Object;
.source "SemStrokeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/infoextraction/SemStrokeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mStroke:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/samsung/android/infoextraction/SemStrokeData$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemStrokeData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/SemStrokeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    sget-object v1, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 83
    return-void
.end method

.method public whitelist setPoints([Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "points"    # [Landroid/graphics/PointF;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 46
    .local v2, "p":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v2    # "p":Landroid/graphics/PointF;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public blacklist size()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemStrokeData;->mStroke:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 75
    return-void
.end method
