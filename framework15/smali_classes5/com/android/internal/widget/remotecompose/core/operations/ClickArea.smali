.class public Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;
.super Ljava/lang/Object;
.source "ClickArea.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;


# instance fields
.field blacklist mBottom:F

.field blacklist mContentDescription:I

.field blacklist mId:I

.field blacklist mLeft:F

.field blacklist mMetadata:I

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIFFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addClickArea(IIFFFFI)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLICK_AREA <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 9

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mContentDescription:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mLeft:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mTop:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mRight:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mBottom:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->mMetadata:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    return-void
.end method
