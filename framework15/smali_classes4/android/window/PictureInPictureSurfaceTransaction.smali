.class public final Landroid/window/PictureInPictureSurfaceTransaction;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/PictureInPictureSurfaceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NOT_SET:F = -1.0f


# instance fields
.field public final blacklist mAlpha:F

.field public final blacklist mCornerRadius:F

.field public final blacklist mFloat9:[F

.field public final blacklist mPosition:Landroid/graphics/PointF;

.field public final blacklist mRotation:F

.field public final blacklist mShadowRadius:F

.field private blacklist mShouldDisableCanAffectSystemUiFlags:Z

.field private final blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$1;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$1;-><init>()V

    sput-object v0, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    iput-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/16 v0, 0x9

    if-nez p3, :cond_0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    goto :goto_0

    :cond_0
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iput p4, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    :goto_0
    iput p5, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    iput p6, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    if-nez p7, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .locals 8

    iget v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    iget-object v2, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget v4, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    iget v5, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    iget v6, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    iget-object v7, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V

    iget-boolean v0, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    iput-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    return-void
.end method

.method public static blacklist apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasCornerRadiusSet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    nop

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_DISABLE_ROUNDED_CORNER:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    :goto_0
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasShadowRadiusSet()Z

    move-result v1

    if-eqz v1, :cond_5

    nop

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_DISABLE_ROUNDED_CORNER:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    :goto_1
    invoke-virtual {p2, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_6
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
    instance-of v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/window/PictureInPictureSurfaceTransaction;

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    iget-boolean v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public blacklist getShouldDisableCanAffectSystemUiFlags()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    return v0
.end method

.method public blacklist hasCornerRadiusSet()Z
    .locals 2

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasShadowRadiusSet()Z
    .locals 2

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setShouldDisableCanAffectSystemUiFlags(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureInPictureSurfaceTransaction( alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matrix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shadowRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shouldDisableCanAffectSystemUiFlags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
