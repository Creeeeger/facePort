.class public final Landroid/credentials/selection/GetCredentialProviderData;
.super Landroid/credentials/selection/ProviderData;
.source "GetCredentialProviderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/GetCredentialProviderData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/GetCredentialProviderData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteEntry:Landroid/credentials/selection/Entry;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/GetCredentialProviderData$1;

    invoke-direct {v0}, Landroid/credentials/selection/GetCredentialProviderData$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/GetCredentialProviderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mCredentialEntries:Ljava/util/List;

    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/credentials/selection/GetCredentialProviderData;->mCredentialEntries:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iput-object v1, p0, Landroid/credentials/selection/GetCredentialProviderData;->mActionChips:Ljava/util/List;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/GetCredentialProviderData;->mActionChips:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Landroid/credentials/selection/AuthenticationEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iput-object v2, p0, Landroid/credentials/selection/GetCredentialProviderData;->mAuthenticationEntries:Ljava/util/List;

    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/credentials/selection/GetCredentialProviderData;->mAuthenticationEntries:Ljava/util/List;

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    sget-object v3, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/selection/Entry;

    iput-object v3, p0, Landroid/credentials/selection/GetCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/GetCredentialProviderData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/GetCredentialProviderData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;",
            "Landroid/credentials/selection/Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/credentials/selection/ProviderData;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mCredentialEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mActionChips:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mAuthenticationEntries:Ljava/util/List;

    iput-object p5, p0, Landroid/credentials/selection/GetCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActionChips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mActionChips:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAuthenticationEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mAuthenticationEntries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getCredentialEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mCredentialEntries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRemoteEntry()Landroid/credentials/selection/Entry;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object v0
.end method

.method public blacklist toGetCredentialProviderInfo()Landroid/credentials/selection/GetCredentialProviderInfo;
    .locals 7

    new-instance v6, Landroid/credentials/selection/GetCredentialProviderInfo;

    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData;->getProviderFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/credentials/selection/GetCredentialProviderData;->mCredentialEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/GetCredentialProviderData;->mActionChips:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/selection/GetCredentialProviderData;->mAuthenticationEntries:Ljava/util/List;

    iget-object v5, p0, Landroid/credentials/selection/GetCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/GetCredentialProviderInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v6
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/credentials/selection/ProviderData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mCredentialEntries:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mActionChips:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mAuthenticationEntries:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
