.class public Landroid/os/vibrator/persistence/ParsedVibration;
.super Ljava/lang/Object;
.source "ParsedVibration.java"


# instance fields
.field private final blacklist mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibrationEffect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getVibrationEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {p1, v1}, Landroid/os/VibratorInfo;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
