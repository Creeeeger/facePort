.class public final Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHeight:I

.field public final mWidth:I

.field public final mYuvData:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput p2, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mWidth:I

    iput p3, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mHeight:I

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    return-void
.end method


# virtual methods
.method public final getMatrix()[B
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    return-object p0
.end method

.method public final getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mHeight:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mWidth:I

    if-eqz p2, :cond_0

    array-length v1, p2

    if-ge v1, v0, :cond_1

    :cond_0
    new-array p2, v0, [B

    :cond_1
    mul-int/2addr p1, v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested row is outside the image: "

    invoke-static {p1, p2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
