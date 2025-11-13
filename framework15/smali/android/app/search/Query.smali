.class public final Landroid/app/search/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/Query;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_IME_HEIGHT:Ljava/lang/String; = "android.app.search.extra.IME_HEIGHT"


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInput:Ljava/lang/String;

.field private final blacklist mTimestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/search/Query$1;

    invoke-direct {v0}, Landroid/app/search/Query$1;-><init>()V

    sput-object v0, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/search/Query-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/search/Query;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/search/Query;->mTimestampMillis:J

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getInput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTimestamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/search/Query;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/search/Query;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/search/Query;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
