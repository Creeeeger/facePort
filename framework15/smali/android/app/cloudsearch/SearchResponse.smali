.class public final Landroid/app/cloudsearch/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchResponse$Builder;,
        Landroid/app/cloudsearch/SearchResponse$SearchStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SEARCH_STATUS_NO_INTERNET:I = 0x2

.field public static final whitelist SEARCH_STATUS_OK:I = 0x0

.field public static final whitelist SEARCH_STATUS_TIME_OUT:I = 0x1

.field public static final whitelist SEARCH_STATUS_UNKNOWN:I = -0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/cloudsearch/SearchResponse$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchResponse$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/cloudsearch/SearchResponse-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/cloudsearch/SearchResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getSource()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
