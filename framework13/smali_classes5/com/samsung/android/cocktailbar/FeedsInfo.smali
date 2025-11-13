.class public Lcom/samsung/android/cocktailbar/FeedsInfo;
.super Ljava/lang/Object;
.source "FeedsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist extras:Landroid/os/Bundle;

.field public blacklist feedsText:Ljava/lang/CharSequence;

.field public blacklist icon:I

.field public blacklist largeIcon:Landroid/graphics/Bitmap;

.field public blacklist packageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/samsung/android/cocktailbar/FeedsInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/FeedsInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/FeedsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->extras:Landroid/os/Bundle;

    .line 42
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->icon:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->packageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "feedsText"    # Ljava/lang/CharSequence;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->extras:Landroid/os/Bundle;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->packageName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/samsung/android/cocktailbar/FeedsInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/FeedsInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 101
    iget v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/FeedsInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
