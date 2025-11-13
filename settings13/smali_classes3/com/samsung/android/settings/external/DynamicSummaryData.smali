.class public Lcom/samsung/android/settings/external/DynamicSummaryData;
.super Ljava/lang/Object;
.source "DynamicSummaryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/external/DynamicSummaryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrder:I

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/settings/external/DynamicSummaryData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicSummaryData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/external/DynamicSummaryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicSummaryData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 34
    iget p2, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
