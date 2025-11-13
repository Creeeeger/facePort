.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
.super Ljava/lang/Object;
.source "BitmapData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

.field public static final blacklist MAX_IMAGE_DIMENSION:I = 0x1f40


# instance fields
.field blacklist mBitmap:[B

.field blacklist mImageHeight:I

.field blacklist mImageId:I

.field blacklist mImageWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

    return-void
.end method

.method public constructor blacklist <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadBitmap(III[B)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BITMAP DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageWidth:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageHeight:I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mBitmap:[B

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    return-void
.end method
