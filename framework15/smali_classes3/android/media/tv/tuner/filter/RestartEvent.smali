.class public final Landroid/media/tv/tuner/filter/RestartEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "RestartEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist NEW_FILTER_FIRST_START_ID:I


# instance fields
.field private final blacklist mStartId:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/RestartEvent;->mStartId:I

    return-void
.end method


# virtual methods
.method public whitelist getStartId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/RestartEvent;->mStartId:I

    return v0
.end method
