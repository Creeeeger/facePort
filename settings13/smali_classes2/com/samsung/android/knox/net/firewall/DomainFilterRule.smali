.class public Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
.super Ljava/lang/Object;
.source "DomainFilterRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

.field private mDenyDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDns1:Ljava/lang/String;

.field private mDns2:Ljava/lang/String;

.field private mNullCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v0}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>()V

    .line 104
    const-class v0, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mNullCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_0

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 111
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mNullCheck:I

    if-ne v0, v2, :cond_1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_1

    .line 115
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    .line 117
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/firewall/DomainFilterRule-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
