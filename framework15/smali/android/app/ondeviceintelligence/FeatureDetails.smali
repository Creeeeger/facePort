.class public final Landroid/app/ondeviceintelligence/FeatureDetails;
.super Ljava/lang/Object;
.source "FeatureDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/FeatureDetails$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_STATUS_AVAILABLE:I = 0x3

.field public static final whitelist FEATURE_STATUS_DOWNLOADABLE:I = 0x1

.field public static final whitelist FEATURE_STATUS_DOWNLOADING:I = 0x2

.field public static final whitelist FEATURE_STATUS_SERVICE_UNAVAILABLE:I = 0x4

.field public static final whitelist FEATURE_STATUS_UNAVAILABLE:I


# instance fields
.field private final blacklist mFeatureDetailParams:Landroid/os/PersistableBundle;

.field private final blacklist mFeatureStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ondeviceintelligence/FeatureDetails$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/FeatureDetails$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/FeatureDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const-class v0, Landroid/app/ondeviceintelligence/FeatureDetails$Status;

    const/4 v1, 0x0

    iget v2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/os/PersistableBundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const-class v0, Landroid/app/ondeviceintelligence/FeatureDetails$Status;

    iget v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const-class v2, Landroid/app/ondeviceintelligence/FeatureDetails$Status;

    iget v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

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

    check-cast v2, Landroid/app/ondeviceintelligence/FeatureDetails;

    iget v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    iget v4, v2, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

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

.method public whitelist getFeatureDetailParams()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getFeatureStatus()I
    .locals 1

    iget v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FeatureDetails \'{\' status = {0}, persistableBundle = {1} \'}\'"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
