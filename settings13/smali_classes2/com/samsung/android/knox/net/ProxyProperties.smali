.class public Lcom/samsung/android/knox/net/ProxyProperties;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mExclusionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostname:Ljava/lang/String;

.field private mPacFileUrl:Ljava/lang/String;

.field private mPortNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPortNumber:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mExclusionList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mAuthConfigList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPortNumber:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mExclusionList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mAuthConfigList:Ljava/util/List;

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/ProxyProperties;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/ProxyProperties-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExclusionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mExclusionList:Ljava/util/List;

    return-object p0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mHostname:Ljava/lang/String;

    return-object p0
.end method

.method public getPacFileUrl()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPortNumber()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPortNumber:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mHostname:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPortNumber:I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mExclusionList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 88
    iget-object p0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mAuthConfigList:Ljava/util/List;

    const-class v0, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 75
    iget-object p2, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mHostname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget p2, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPortNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object p2, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mExclusionList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 78
    iget-object p2, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/samsung/android/knox/net/ProxyProperties;->mAuthConfigList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
