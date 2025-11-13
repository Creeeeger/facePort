.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapInt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;


# instance fields
.field blacklist mContentDescId:I

.field blacklist mDstBottom:I

.field blacklist mDstLeft:I

.field blacklist mDstRight:I

.field blacklist mDstTop:I

.field blacklist mImageId:I

.field blacklist mSrcBottom:I

.field blacklist mSrcLeft:I

.field blacklist mSrcRight:I

.field blacklist mSrcTop:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 11

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRAW_BITMAP_INT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 12

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    return-void
.end method
