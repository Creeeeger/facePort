.class public Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
.super Landroid/media/tv/tuner/filter/SectionSettings;
.source "SectionSettingsWithSectionBits.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mFilter:[B

.field private final blacklist mMask:[B

.field private final blacklist mMode:[B


# direct methods
.method private constructor blacklist <init>(IZZZI[B[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/filter/SectionSettings;-><init>(IZZZI)V

    iput-object p6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mFilter:[B

    iput-object p7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMask:[B

    iput-object p8, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMode:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(IZZZI[B[B[BLandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;-><init>(IZZZI[B[B[B)V

    return-void
.end method

.method public static whitelist builder(I)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .locals 2

    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;-><init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getFilterBytes()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mFilter:[B

    return-object v0
.end method

.method public whitelist getMask()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMask:[B

    return-object v0
.end method

.method public whitelist getMode()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMode:[B

    return-object v0
.end method
