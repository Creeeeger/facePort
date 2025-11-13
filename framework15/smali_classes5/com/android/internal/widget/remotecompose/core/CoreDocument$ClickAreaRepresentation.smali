.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickAreaRepresentation"
.end annotation


# instance fields
.field blacklist mBottom:F

.field blacklist mContentDescription:Ljava/lang/String;

.field blacklist mId:I

.field blacklist mLeft:F

.field blacklist mMetadata:Ljava/lang/String;

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist contains(FF)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    return v0
.end method

.method public blacklist getLeft()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    return v0
.end method

.method public blacklist getMetadata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTop()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    return v0
.end method

.method public blacklist height()F
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public blacklist width()F
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
