.class public final Landroid/os/PowerSaveState$Builder;
.super Ljava/lang/Object;
.source "PowerSaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBatterySaverEnabled:Z

.field private greylist-max-o mBrightnessFactor:F

.field private greylist-max-o mGlobalBatterySaverEnabled:Z

.field private blacklist mLocationMode:I

.field private blacklist mSoundTriggerMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBatterySaverEnabled(Landroid/os/PowerSaveState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrightnessFactor(Landroid/os/PowerSaveState$Builder;)F
    .locals 0

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlobalBatterySaverEnabled(Landroid/os/PowerSaveState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationMode(Landroid/os/PowerSaveState$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundTriggerMode(Landroid/os/PowerSaveState$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mSoundTriggerMode:I

    return p0
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mSoundTriggerMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/os/PowerSaveState;
    .locals 1

    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p0}, Landroid/os/PowerSaveState;-><init>(Landroid/os/PowerSaveState$Builder;)V

    return-object v0
.end method

.method public greylist-max-o setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return-object p0
.end method

.method public greylist-max-o setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return-object p0
.end method

.method public greylist-max-o setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return-object p0
.end method

.method public blacklist setLocationMode(I)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    return-object p0
.end method

.method public blacklist setSoundTriggerMode(I)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mSoundTriggerMode:I

    return-object p0
.end method
