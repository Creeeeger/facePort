.class public final Landroid/app/ondeviceintelligence/Feature;
.super Ljava/lang/Object;
.source "Feature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/Feature$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureParams:Landroid/os/PersistableBundle;

.field private final blacklist mId:I

.field private final blacklist mModelName:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mVariant:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ondeviceintelligence/Feature$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/Feature$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IILandroid/os/PersistableBundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    iput-object p2, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    iput p4, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    iput p5, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    iput-object p6, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v7, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersistableBundle;

    iput v1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    iput-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    iput-object v4, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    iput v5, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    iput v6, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    iput-object v7, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v8, v3, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    iget v4, v2, Landroid/app/ondeviceintelligence/Feature;->mId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    iget v4, v2, Landroid/app/ondeviceintelligence/Feature;->mType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    iget v4, v2, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getFeatureParams()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    return v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    return v0
.end method

.method public whitelist getVariant()I
    .locals 1

    iget v0, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
