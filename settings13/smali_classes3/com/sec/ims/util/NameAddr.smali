.class public Lcom/sec/ims/util/NameAddr;
.super Ljava/lang/Object;
.source "NameAddr.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/sec/ims/util/NameAddr$1;

    invoke-direct {v0}, Lcom/sec/ims/util/NameAddr$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/NameAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    .line 117
    const-class v0, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/NameAddr-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/util/NameAddr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 176
    :cond_2
    check-cast p1, Lcom/sec/ims/util/NameAddr;

    .line 177
    iget-object v2, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 178
    iget-object v2, p1, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 180
    :cond_3
    iget-object v3, p1, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 182
    :cond_4
    iget-object p0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_6

    .line 183
    iget-object p0, p1, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 184
    :cond_6
    iget-object p1, p1, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 158
    iget-object p0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object p0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
