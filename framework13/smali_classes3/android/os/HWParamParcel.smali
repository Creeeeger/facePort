.class public Landroid/os/HWParamParcel;
.super Ljava/lang/Object;
.source "HWParamParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/HWParamParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist appID:Ljava/lang/String;

.field blacklist compID:Ljava/lang/String;

.field blacklist compManufacture:Ljava/lang/String;

.field blacklist compVer:Ljava/lang/String;

.field blacklist customMap:Ljava/lang/String;

.field blacklist developMap:Ljava/lang/String;

.field blacklist feature:Ljava/lang/String;

.field blacklist hitType:Ljava/lang/String;

.field blacklist privateMap:Ljava/lang/String;

.field blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/os/HWParamParcel$1;

    invoke-direct {v0}, Landroid/os/HWParamParcel$1;-><init>()V

    sput-object v0, Landroid/os/HWParamParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/HWParamParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/HWParamParcel-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HWParamParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompID()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompManufacture()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompVer()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomMap()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDevelopMap()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFeature()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHitType()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPrivateMap()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/os/HWParamParcel;->type:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public blacklist setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "compID"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "compVer"    # Ljava/lang/String;
    .param p6, "compManufacture"    # Ljava/lang/String;
    .param p7, "developMap"    # Ljava/lang/String;
    .param p8, "customMap"    # Ljava/lang/String;
    .param p9, "privateMap"    # Ljava/lang/String;

    .line 88
    iput p1, p0, Landroid/os/HWParamParcel;->type:I

    .line 89
    iput-object p2, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 96
    iput-object p9, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public blacklist setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "compID"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "compVer"    # Ljava/lang/String;
    .param p6, "compManufacture"    # Ljava/lang/String;
    .param p7, "developMap"    # Ljava/lang/String;
    .param p8, "customMap"    # Ljava/lang/String;
    .param p9, "privateMap"    # Ljava/lang/String;
    .param p10, "appID"    # Ljava/lang/String;

    .line 103
    iput p1, p0, Landroid/os/HWParamParcel;->type:I

    .line 104
    iput-object p2, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    .line 108
    iput-object p6, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    .line 110
    iput-object p8, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    .line 111
    iput-object p9, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    .line 112
    iput-object p10, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 49
    iget v0, p0, Landroid/os/HWParamParcel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/HWParamParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method
