.class public final Landroid/service/credentials/BeginGetCredentialResponse;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/BeginGetCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActions:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialEntries:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/credentials/BeginGetCredentialResponse$1;

    invoke-direct {v0}, Landroid/service/credentials/BeginGetCredentialResponse$1;-><init>()V

    sput-object v0, Landroid/service/credentials/BeginGetCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/credentials/Action;",
            ">;",
            "Landroid/service/credentials/RemoteEntry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    iput-object p2, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    iput-object p4, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;Landroid/service/credentials/BeginGetCredentialResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    const-class v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    const-class v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    sget-object v0, Landroid/service/credentials/RemoteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/credentials/RemoteEntry;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/BeginGetCredentialResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAuthenticationActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCredentialEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;
    .locals 1

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mCredentialEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mAuthenticationEntries:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mActions:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
