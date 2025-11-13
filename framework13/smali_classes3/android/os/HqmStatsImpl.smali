.class public Landroid/os/HqmStatsImpl;
.super Ljava/lang/Object;
.source "HqmStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CF_SERVER:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/HqmStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DV_SERVER:I = 0x0

.field public static final blacklist HQM_INTERFACE_API:I = 0x1

.field public static final blacklist HQM_INTERFACE_INTENT:I = 0x2

.field public static final blacklist HQM_INTERFACE_KERNEL:I = 0x0

.field public static final blacklist HQM_INTERFACE_UNKNOWN:I = -0x1

.field public static final blacklist NONE_SERVER:I = -0x1


# instance fields
.field private blacklist mHWParamResultDataFromA:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHWParamResultDataFromI:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHWParamResultDataFromK:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/os/HqmStatsImpl$1;

    invoke-direct {v0}, Landroid/os/HqmStatsImpl$1;-><init>()V

    sput-object v0, Landroid/os/HqmStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    .line 43
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/HqmStatsImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HqmStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addHWParamResultData(ILjava/lang/String;Landroid/os/HWParamResultData;)V
    .locals 1
    .param p1, "interfaceType"    # I
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/HWParamResultData;

    .line 61
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 66
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHWParamResultDataMaps(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "interfaceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation

    .line 50
    if-nez p1, :cond_0

    .line 51
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 53
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 55
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    return-object v0

    .line 57
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, "numHWParams":I
    iget-object v1, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 99
    const/4 v1, 0x0

    .local v1, "ih":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "keyName":Ljava/lang/String;
    new-instance v3, Landroid/os/HWParamResultData;

    invoke-direct {v3}, Landroid/os/HWParamResultData;-><init>()V

    .line 102
    .local v3, "item":Landroid/os/HWParamResultData;
    invoke-virtual {v3, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 103
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "item":Landroid/os/HWParamResultData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "ih":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    iget-object v1, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 108
    const/4 v1, 0x0

    .restart local v1    # "ih":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "keyName":Ljava/lang/String;
    new-instance v3, Landroid/os/HWParamResultData;

    invoke-direct {v3}, Landroid/os/HWParamResultData;-><init>()V

    .line 111
    .restart local v3    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v3, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 112
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "item":Landroid/os/HWParamResultData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "ih":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    iget-object v1, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 117
    const/4 v1, 0x0

    .restart local v1    # "ih":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "keyName":Ljava/lang/String;
    new-instance v3, Landroid/os/HWParamResultData;

    invoke-direct {v3}, Landroid/os/HWParamResultData;-><init>()V

    .line 120
    .restart local v3    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v3, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 121
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "item":Landroid/os/HWParamResultData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    .end local v1    # "ih":I
    :cond_2
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 71
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 72
    .local v0, "NH":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v1, 0x0

    .local v1, "ih":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    .line 76
    .local v2, "item":Landroid/os/HWParamResultData;
    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 73
    .end local v2    # "item":Landroid/os/HWParamResultData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "ih":I
    :cond_0
    iget-object v1, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v1, 0x0

    .restart local v1    # "ih":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 82
    iget-object v2, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    .line 84
    .restart local v2    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 81
    .end local v2    # "item":Landroid/os/HWParamResultData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "ih":I
    :cond_1
    iget-object v1, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x0

    .restart local v1    # "ih":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 90
    iget-object v2, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    .line 92
    .restart local v2    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 89
    .end local v2    # "item":Landroid/os/HWParamResultData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "ih":I
    :cond_2
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 134
    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method
