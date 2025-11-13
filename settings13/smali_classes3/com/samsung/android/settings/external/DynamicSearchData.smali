.class public Lcom/samsung/android/settings/external/DynamicSearchData;
.super Ljava/lang/Object;
.source "DynamicSearchData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/external/DynamicSearchData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mSearchTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/samsung/android/settings/external/DynamicSearchData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicSearchData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/external/DynamicSearchData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicSearchData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mKey:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mKeywords:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mSearchTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchTitle()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mSearchTitle:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 72
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mKeywords:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicSearchData;->mSearchTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
