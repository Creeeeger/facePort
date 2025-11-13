.class Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;
.super Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
.source "DeviceInjectorSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharacteristicBuilderImpl"
.end annotation


# instance fields
.field private blacklist mAELockAvailable:Z

.field private blacklist mAEModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAFModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAWBLockAvailable:Z

.field private blacklist mAWBModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActiveArraySize:Landroid/util/Size;

.field private blacklist mCaptureSizes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mControlMode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEffectModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlashAvailable:Z

.field private blacklist mLensFacing:I

.field private blacklist mSceneModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSensorOrientation:I

.field private blacklist mStreamingSizes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSensorOrientation:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mLensFacing:I

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAELockAvailable:Z

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBLockAvailable:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mStreamingSizes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mCaptureSizes:Ljava/util/Set;

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mFlashAvailable:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAEModes:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBModes:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAFModes:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mEffectModes:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mControlMode:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    return-void
.end method

.method static synthetic blacklist lambda$build$0(Ljava/util/ArrayList;Landroid/util/Size;)V
    .locals 5

    new-instance v0, Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x23

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$build$1(Ljava/util/ArrayList;Landroid/util/Size;)V
    .locals 5

    new-instance v0, Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist addSupportedAEMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAEModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addSupportedAFMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAFModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addSupportedAWBMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addSupportedCaptureSize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mCaptureSizes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addSupportedControlMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mControlMode:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addSupportedEffectMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mEffectModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addSupportedSceneMode(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public blacklist addSupportedStreamingSize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mStreamingSizes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist build()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mActiveArraySize:Landroid/util/Size;

    if-eqz v1, :cond_23

    iget v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSensorOrientation:I

    if-ltz v1, :cond_22

    const/16 v1, 0x168

    iget v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSensorOrientation:I

    if-le v1, v2, :cond_22

    iget v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSensorOrientation:I

    rem-int/lit8 v1, v1, 0x5a

    if-nez v1, :cond_22

    iget v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mLensFacing:I

    if-ltz v1, :cond_21

    iget v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mLensFacing:I

    const/4 v2, 0x2

    if-lt v2, v1, :cond_21

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mStreamingSizes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mStreamingSizes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "streaming size contains null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mCaptureSizes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capture size contains null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mStreamingSizes:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mCaptureSizes:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAEModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAEModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid ae mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ae mode contains null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v6, 0x8

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_7

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid awb mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "awb mode contains null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAFModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAFModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v5, v7, :cond_a

    goto :goto_4

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid af mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "af mode contains null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mEffectModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mEffectModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v6, v5, :cond_d

    goto :goto_5

    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid effect mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "effect mode contains null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "scene mode contains null"

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x10

    if-lt v6, v5, :cond_10

    goto :goto_6

    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid scene mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mControlMode:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mControlMode:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-lt v7, v6, :cond_13

    goto :goto_7

    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid control mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mControlMode:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_8

    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "control mode contains USE_SCENE_MODE but no valid scene mode exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_8
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mActiveArraySize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mActiveArraySize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSensorOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mLensFacing:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAELockAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBLockAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mStreamingSizes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mCaptureSizes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {v0, v4, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mFlashAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAEModes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBModes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAFModes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mEffectModes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSceneModes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mControlMode:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v3, v0}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v3

    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "control mode does not contains USE_SCENE_MODE but scene mode other than DISABLED exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supported control modes are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supported scene modes are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supported effect modes are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supported AF modes are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supported AWB modes are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "supported AE modes are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "streaming size and capture size has common size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "streaming size is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "lens facing is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sensor orientation is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "active array size is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setAELockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAELockAvailable:Z

    return-object p0
.end method

.method public blacklist setAWBLockAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mAWBLockAvailable:Z

    return-object p0
.end method

.method public blacklist setActiveArraySize(Landroid/util/Size;)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mActiveArraySize:Landroid/util/Size;

    return-object p0
.end method

.method public blacklist setFlashAvailable(Z)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mFlashAvailable:Z

    return-object p0
.end method

.method public blacklist setLensFacing(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mLensFacing:I

    return-object p0
.end method

.method public blacklist setSensorOrientation(I)Landroid/hardware/camera2/DeviceInjectorSession$CharacteristicBuilder;
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->mSensorOrientation:I

    return-object p0
.end method
