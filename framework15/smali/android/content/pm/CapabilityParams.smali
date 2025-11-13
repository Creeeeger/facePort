.class public final Landroid/content/pm/CapabilityParams;
.super Ljava/lang/Object;
.source "CapabilityParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/CapabilityParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/CapabilityParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPrimaryValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/CapabilityParams$1;

    invoke-direct {v0}, Landroid/content/pm/CapabilityParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/CapabilityParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/pm/CapabilityParams$Builder;)V
    .locals 3

    invoke-static {p1}, Landroid/content/pm/CapabilityParams$Builder;->-$$Nest$fgetmKey(Landroid/content/pm/CapabilityParams$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/CapabilityParams$Builder;->-$$Nest$fgetmPrimaryValue(Landroid/content/pm/CapabilityParams$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/content/pm/CapabilityParams$Builder;->-$$Nest$fgetmAliases(Landroid/content/pm/CapabilityParams$Builder;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/CapabilityParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/CapabilityParams$Builder;Landroid/content/pm/CapabilityParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/CapabilityParams;-><init>(Landroid/content/pm/CapabilityParams$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/CapabilityParams;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/CapabilityParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/CapabilityParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/CapabilityParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/content/pm/CapabilityParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/CapabilityParams;

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getAliases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
