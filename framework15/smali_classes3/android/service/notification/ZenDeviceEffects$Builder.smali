.class public final Landroid/service/notification/ZenDeviceEffects$Builder;
.super Ljava/lang/Object;
.source "ZenDeviceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenDeviceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDimWallpaper:Z

.field private blacklist mDisableAutoBrightness:Z

.field private blacklist mDisableTapToWake:Z

.field private blacklist mDisableTiltToWake:Z

.field private blacklist mDisableTouch:Z

.field private final blacklist mExtraEffects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGrayscale:Z

.field private blacklist mMaximizeDoze:Z

.field private blacklist mMinimizeRadioUsage:Z

.field private blacklist mNightMode:Z

.field private blacklist mSuppressAmbientDisplay:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/notification/ZenDeviceEffects;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mGrayscale:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mSuppressAmbientDisplay:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDimWallpaper:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightMode:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableAutoBrightness:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTapToWake:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTiltToWake:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTouch:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMinimizeRadioUsage:Z

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMaximizeDoze:Z

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_7
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->addExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    return-object p0
.end method

.method public blacklist addExtraEffect(Ljava/lang/String;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/notification/ZenDeviceEffects$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist build()Landroid/service/notification/ZenDeviceEffects;
    .locals 14

    new-instance v13, Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mGrayscale:Z

    iget-boolean v2, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mSuppressAmbientDisplay:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDimWallpaper:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightMode:Z

    iget-boolean v5, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableAutoBrightness:Z

    iget-boolean v6, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTapToWake:Z

    iget-boolean v7, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTiltToWake:Z

    iget-boolean v8, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTouch:Z

    iget-boolean v9, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMinimizeRadioUsage:Z

    iget-boolean v10, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMaximizeDoze:Z

    iget-object v11, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/service/notification/ZenDeviceEffects;-><init>(ZZZZZZZZZZLjava/util/Set;Landroid/service/notification/ZenDeviceEffects-IA;)V

    return-object v13
.end method

.method public blacklist setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/notification/ZenDeviceEffects$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDimWallpaper:Z

    return-object p0
.end method

.method public blacklist setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableAutoBrightness:Z

    return-object p0
.end method

.method public blacklist setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTapToWake:Z

    return-object p0
.end method

.method public blacklist setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTiltToWake:Z

    return-object p0
.end method

.method public blacklist setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTouch:Z

    return-object p0
.end method

.method public blacklist setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mGrayscale:Z

    return-object p0
.end method

.method public blacklist setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMaximizeDoze:Z

    return-object p0
.end method

.method public blacklist setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMinimizeRadioUsage:Z

    return-object p0
.end method

.method public blacklist setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mSuppressAmbientDisplay:Z

    return-object p0
.end method

.method public blacklist setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightMode:Z

    return-object p0
.end method
