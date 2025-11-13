.class public abstract Landroid/media/tv/tuner/filter/FilterConfiguration;
.super Ljava/lang/Object;
.source "FilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field final blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/filter/FilterConfiguration;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-void
.end method


# virtual methods
.method public whitelist getSettings()Landroid/media/tv/tuner/filter/Settings;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/FilterConfiguration;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object v0
.end method

.method public abstract whitelist getType()I
.end method
