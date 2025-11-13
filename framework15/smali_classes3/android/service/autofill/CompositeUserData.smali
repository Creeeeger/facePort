.class public final Landroid/service/autofill/CompositeUserData;
.super Ljava/lang/Object;
.source "CompositeUserData.java"

# interfaces
.implements Landroid/service/autofill/FieldClassificationUserData;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/CompositeUserData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCategories:[Ljava/lang/String;

.field private final blacklist mGenericUserData:Landroid/service/autofill/UserData;

.field private final blacklist mPackageUserData:Landroid/service/autofill/UserData;

.field private final blacklist mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/CompositeUserData$1;

    invoke-direct {v0}, Landroid/service/autofill/CompositeUserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/CompositeUserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    iput-object p2, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v4}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v5}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v6}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v4, v7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v5, v7

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    iget-object v4, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCategoryIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDefaultFieldClassificationArgs()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public blacklist getFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public blacklist getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/service/autofill/CompositeUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v1

    :goto_0
    nop

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_3
    return-object v2
.end method

.method public blacklist getFieldClassificationArgs()Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v1

    :goto_0
    nop

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_3
    return-object v2
.end method

.method public blacklist getValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "genericUserData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
