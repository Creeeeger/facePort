.class public final Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/VirtualCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mLensFacing:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mSensorOrientation:I

.field private final blacklist mStreamConfigurations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/companion/virtual/camera/VirtualCameraStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mStreamConfigurations:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mSensorOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mLensFacing:I

    const-string v0, "Name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist addStreamConfig(IIII)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .locals 4

    const-string v0, ", must be greater than 0"

    if-lez p1, :cond_3

    if-lez p2, :cond_2

    invoke-static {p3}, Landroid/companion/virtual/camera/VirtualCameraConfig;->-$$Nest$smisFormatSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p4, :cond_0

    const/16 v0, 0x3c

    if-gt p4, v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mStreamConfigurations:Landroid/util/ArraySet;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maximumFramesPerSecond, must be greater than 0 and less than 60"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format passed for stream config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid height passed for stream config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid width passed for stream config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist build()Landroid/companion/virtual/camera/VirtualCameraConfig;
    .locals 9

    new-instance v8, Landroid/companion/virtual/camera/VirtualCameraConfig;

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mStreamConfigurations:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    iget v5, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mSensorOrientation:I

    iget v6, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mLensFacing:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/companion/virtual/camera/VirtualCameraConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;IILandroid/companion/virtual/camera/VirtualCameraConfig-IA;)V

    return-object v8
.end method

.method public whitelist setLensFacing(I)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported lens facing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mLensFacing:I

    return-object p0
.end method

.method public whitelist setSensorOrientation(I)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sensor orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mSensorOrientation:I

    return-object p0
.end method

.method public whitelist setVirtualCameraCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraCallback;)Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/camera/VirtualCameraCallback;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$Builder;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    return-object p0
.end method
