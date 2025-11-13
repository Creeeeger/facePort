.class public final Landroid/content/pm/verify/domain/DomainVerificationRequest;
.super Ljava/lang/Object;
.source "DomainVerificationRequest.java"

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
            "Landroid/content/pm/verify/domain/DomainVerificationRequest;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;

    sget-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->sParcellingForPackageNames:Lcom/android/internal/util/Parcelling;

    :cond_0
    new-instance v0, Landroid/content/pm/verify/domain/DomainVerificationRequest$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainVerificationRequest$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationRequest;->unparcelPackageNames(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist parcelPackageNames(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V

    return-void
.end method

.method private blacklist unparcelPackageNames(Landroid/os/Parcel;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readHostSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    iget-object v2, v0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationRequest;->mPackageNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationRequest;->parcelPackageNames(Landroid/os/Parcel;I)V

    return-void
.end method
