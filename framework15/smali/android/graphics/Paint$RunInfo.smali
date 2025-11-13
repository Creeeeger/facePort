.class public final Landroid/graphics/Paint$RunInfo;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunInfo"
.end annotation


# instance fields
.field private blacklist mClusterCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return-void
.end method


# virtual methods
.method public blacklist getClusterCount()I
    .locals 1

    iget v0, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return v0
.end method

.method public blacklist setClusterCount(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return-void
.end method
