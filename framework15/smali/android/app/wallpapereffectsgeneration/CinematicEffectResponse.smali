.class public final Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
.super Ljava/lang/Object;
.source "CinematicEffectResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;,
        Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$ImageContentType;,
        Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$CinematicEffectStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist CINEMATIC_EFFECT_STATUS_ANIMATION_FAILURE:I = 0xa

.field public static final whitelist CINEMATIC_EFFECT_STATUS_CONTENT_TARGET_ERROR:I = 0x8

.field public static final whitelist CINEMATIC_EFFECT_STATUS_CONTENT_TOO_FLAT:I = 0x9

.field public static final whitelist CINEMATIC_EFFECT_STATUS_CONTENT_UNSUPPORTED:I = 0x7

.field public static final whitelist CINEMATIC_EFFECT_STATUS_ERROR:I = 0x0

.field public static final whitelist CINEMATIC_EFFECT_STATUS_FEATURE_DISABLED:I = 0x5

.field public static final whitelist CINEMATIC_EFFECT_STATUS_IMAGE_FORMAT_NOT_SUITABLE:I = 0x6

.field public static final whitelist CINEMATIC_EFFECT_STATUS_NOT_READY:I = 0x2

.field public static final whitelist CINEMATIC_EFFECT_STATUS_OK:I = 0x1

.field public static final whitelist CINEMATIC_EFFECT_STATUS_PENDING:I = 0x3

.field public static final whitelist CINEMATIC_EFFECT_STATUS_TOO_MANY_REQUESTS:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IMAGE_CONTENT_TYPE_LANDSCAPE:I = 0x2

.field public static final whitelist IMAGE_CONTENT_TYPE_OTHER:I = 0x3

.field public static final whitelist IMAGE_CONTENT_TYPE_PEOPLE_PORTRAIT:I = 0x1

.field public static final whitelist IMAGE_CONTENT_TYPE_UNKNOWN:I


# instance fields
.field private blacklist mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private blacklist mImageContentType:I

.field private blacklist mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private blacklist mStatusCode:I

.field private blacklist mTaskId:Ljava/lang/String;

.field private blacklist mTexturedMeshes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    iput p3, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    iput-object p5, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iput-object p6, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iput-object p4, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;-><init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    sget-object v1, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    sget-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    sget-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;-><init>(Landroid/os/Parcel;)V

    return-void
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

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndKeyFrame()Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-object v0
.end method

.method public whitelist getImageContentType()I
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    return v0
.end method

.method public whitelist getStartKeyFrame()Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    return v0
.end method

.method public whitelist getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTexturedMeshes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
