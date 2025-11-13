.class public final Landroid/app/wallpapereffectsgeneration/CameraAttributes;
.super Ljava/lang/Object;
.source "CameraAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAnchorPointInOutputUvSpace:[F

.field private blacklist mAnchorPointInWorldSpace:[F

.field private blacklist mCameraOrbitPitchDegrees:F

.field private blacklist mCameraOrbitYawDegrees:F

.field private blacklist mDollyDistanceInWorldSpace:F

.field private blacklist mFrustumFarInWorldSpace:F

.field private blacklist mFrustumNearInWorldSpace:F

.field private blacklist mVerticalFovDegrees:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/CameraAttributes$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([F[FFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    iput p3, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    iput p4, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    iput p5, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    iput p6, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    iput p7, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    iput p8, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    return-void
.end method

.method synthetic constructor blacklist <init>([F[FFFFFFFLandroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>([F[FFFFFFF)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAnchorPointInOutputUvSpace()[F
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    return-object v0
.end method

.method public whitelist getAnchorPointInWorldSpace()[F
    .locals 1

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    return-object v0
.end method

.method public whitelist getCameraOrbitPitchDegrees()F
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    return v0
.end method

.method public whitelist getCameraOrbitYawDegrees()F
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    return v0
.end method

.method public whitelist getDollyDistanceInWorldSpace()F
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    return v0
.end method

.method public whitelist getFrustumFarInWorldSpace()F
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    return v0
.end method

.method public whitelist getFrustumNearInWorldSpace()F
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    return v0
.end method

.method public whitelist getVerticalFovDegrees()F
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
