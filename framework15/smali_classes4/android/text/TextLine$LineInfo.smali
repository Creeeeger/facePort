.class public final Landroid/text/TextLine$LineInfo;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineInfo"
.end annotation


# instance fields
.field private blacklist mClusterCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getClusterCount()I
    .locals 1

    iget v0, p0, Landroid/text/TextLine$LineInfo;->mClusterCount:I

    return v0
.end method

.method public blacklist setClusterCount(I)V
    .locals 0

    iput p1, p0, Landroid/text/TextLine$LineInfo;->mClusterCount:I

    return-void
.end method
