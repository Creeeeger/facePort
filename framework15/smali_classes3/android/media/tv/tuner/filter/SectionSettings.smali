.class public abstract Landroid/media/tv/tuner/filter/SectionSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "SectionSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    }
.end annotation


# instance fields
.field final blacklist mBitWidthOfLengthField:I

.field final blacklist mCrcEnabled:Z

.field final blacklist mIsRaw:Z

.field final blacklist mIsRepeat:Z


# direct methods
.method constructor blacklist <init>(IZZZI)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mCrcEnabled:Z

    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRepeat:Z

    iput-boolean p4, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRaw:Z

    iput p5, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mBitWidthOfLengthField:I

    return-void
.end method


# virtual methods
.method public whitelist getLengthFieldBitWidth()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mBitWidthOfLengthField:I

    return v0
.end method

.method public whitelist isCrcEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mCrcEnabled:Z

    return v0
.end method

.method public whitelist isRaw()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRaw:Z

    return v0
.end method

.method public whitelist isRepeat()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRepeat:Z

    return v0
.end method
