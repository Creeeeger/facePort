.class public final Landroid/telephony/NetworkScanRequest;
.super Ljava/lang/Object;
.source "NetworkScanRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkScanRequest$ScanType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NetworkScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MAX_BANDS:I = 0x8

.field public static final greylist-max-o MAX_CHANNELS:I = 0x20

.field public static final greylist-max-o MAX_INCREMENTAL_PERIODICITY_SEC:I = 0xa

.field public static final greylist-max-o MAX_MCC_MNC_LIST_SIZE:I = 0x14

.field public static final greylist-max-o MAX_RADIO_ACCESS_NETWORKS:I = 0x8

.field public static final greylist-max-o MAX_SEARCH_MAX_SEC:I = 0xe10

.field public static final greylist-max-o MAX_SEARCH_PERIODICITY_SEC:I = 0x12c

.field public static final greylist-max-o MIN_INCREMENTAL_PERIODICITY_SEC:I = 0x1

.field public static final greylist-max-o MIN_SEARCH_MAX_SEC:I = 0x3c

.field public static final greylist-max-o MIN_SEARCH_PERIODICITY_SEC:I = 0x5

.field public static final whitelist SCAN_TYPE_ONE_SHOT:I = 0x0

.field public static final whitelist SCAN_TYPE_PERIODIC:I = 0x1


# instance fields
.field private greylist-max-o mIncrementalResults:Z

.field private greylist-max-o mIncrementalResultsPeriodicity:I

.field private greylist-max-o mMaxSearchTime:I

.field private greylist-max-o mMccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mScanType:I

.field private greylist-max-o mSearchPeriodicity:I

.field private greylist-max-o mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Landroid/telephony/NetworkScanRequest$1;

    invoke-direct {v0}, Landroid/telephony/NetworkScanRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[Landroid/telephony/RadioAccessSpecifier;IIZILjava/util/ArrayList;)V
    .locals 1
    .param p1, "scanType"    # I
    .param p2, "specifiers"    # [Landroid/telephony/RadioAccessSpecifier;
    .param p3, "searchPeriodicity"    # I
    .param p4, "maxSearchTime"    # I
    .param p5, "incrementalResults"    # Z
    .param p6, "incrementalResultsPeriodicity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/telephony/RadioAccessSpecifier;",
            "IIZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p7, "mccMncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Landroid/telephony/NetworkScanRequest;->mScanType:I

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p2}, [Landroid/telephony/RadioAccessSpecifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/RadioAccessSpecifier;

    iput-object v0, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 151
    :goto_0
    iput p3, p0, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    .line 152
    iput p4, p0, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    .line 153
    iput-boolean p5, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    .line 154
    iput p6, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    .line 155
    if-eqz p7, :cond_1

    .line 156
    invoke-virtual {p7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    goto :goto_1

    .line 158
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    .line 160
    :goto_1
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkScanRequest;->mScanType:I

    .line 224
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/RadioAccessSpecifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 226
    .local v0, "tempSpecifiers":[Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 227
    array-length v1, v0

    new-array v1, v1, [Landroid/telephony/RadioAccessSpecifier;

    iput-object v1, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 229
    iget-object v2, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    aget-object v3, v0, v1

    check-cast v3, Landroid/telephony/RadioAccessSpecifier;

    aput-object v3, v2, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 232
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 234
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/NetworkScanRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkScanRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/NetworkScanRequest;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .local v1, "nsr":Landroid/telephony/NetworkScanRequest;
    nop

    .line 252
    if-nez p1, :cond_0

    .line 253
    return v0

    .line 256
    :cond_0
    iget v2, p0, Landroid/telephony/NetworkScanRequest;->mScanType:I

    iget v3, v1, Landroid/telephony/NetworkScanRequest;->mScanType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    iget-object v3, v1, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 257
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    iget v3, v1, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    iget v3, v1, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    iget-boolean v3, v1, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    iget v3, v1, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v3, v1, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 256
    :goto_0
    return v0

    .line 248
    .end local v1    # "nsr":Landroid/telephony/NetworkScanRequest;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist getIncrementalResults()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    return v0
.end method

.method public whitelist getIncrementalResultsPeriodicity()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    return v0
.end method

.method public whitelist getMaxSearchTime()I
    .locals 1

    .line 175
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    return v0
.end method

.method public whitelist getPlmns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getScanType()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mScanType:I

    return v0
.end method

.method public whitelist getSearchPeriodicity()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    return v0
.end method

.method public whitelist getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Landroid/telephony/RadioAccessSpecifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/RadioAccessSpecifier;

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 268
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mScanType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 269
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    .line 272
    iget-boolean v1, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v2, v2, 0x2f

    add-int/2addr v0, v2

    iget v1, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    .line 268
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 213
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mScanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/telephony/NetworkScanRequest;->mSpecifiers:[Landroid/telephony/RadioAccessSpecifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 215
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mSearchPeriodicity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mMaxSearchTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-boolean v0, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->mIncrementalResultsPeriodicity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/telephony/NetworkScanRequest;->mMccMncs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 220
    return-void
.end method
