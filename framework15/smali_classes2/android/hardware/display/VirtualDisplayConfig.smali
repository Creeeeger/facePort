.class public final Landroid/hardware/display/VirtualDisplayConfig;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplayConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/VirtualDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDensityDpi:I

.field private blacklist mDisplayCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayIdToMirror:I

.field private final blacklist mFlags:I

.field private final blacklist mHeight:I

.field private final blacklist mIsHomeSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mRequestedRefreshRate:F

.field private final blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mUniqueId:Ljava/lang/String;

.field private final blacklist mWidth:I

.field private final blacklist mWindowManagerMirroringEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$1;

    invoke-direct {v0}, Landroid/hardware/display/VirtualDisplayConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/VirtualDisplayConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/Surface;",
            "Ljava/lang/String;",
            "IZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;FZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    iput p3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    iput p4, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    iput p5, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    iput-object p6, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iput-object p7, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iput p8, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iput-boolean p9, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    iput-object p10, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iput p11, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    iput-boolean p12, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/hardware/display/VirtualDisplayConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZ)V

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
    instance-of v1, p1, Landroid/hardware/display/VirtualDisplayConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/VirtualDisplayConfig;

    iget-object v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    iget v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    iget v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    iget v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    iget v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iget-object v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    iget v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    iget-boolean v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    iget v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    iget-boolean v4, v1, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getDensityDpi()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    return v0
.end method

.method public whitelist getDisplayCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayIdToMirror()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequestedRefreshRate()F
    .locals 1

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 12

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    iget-object v6, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    iget v7, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    iget v10, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-boolean v11, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isHomeSupported()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmCustomHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWindowManagerMirroringEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplayConfig( mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayIdToMirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowManagerMirroringEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequestedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsHomeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayIdToMirror:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mWindowManagerMirroringEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mRequestedRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig;->mIsHomeSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
