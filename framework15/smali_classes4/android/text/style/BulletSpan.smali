.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final greylist-max-o STANDARD_BULLET_RADIUS:I = 0x4

.field private static final greylist-max-o STANDARD_COLOR:I = 0x0

.field public static final whitelist STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private final greylist-max-o mBulletRadius:I

.field private final greylist-max-p mColor:I

.field private final greylist-max-p mGapWidth:I

.field private final greylist-max-p mWantColor:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method private constructor greylist-max-o <init>(IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    iput p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    iput-boolean p3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 11

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p9

    move-object/from16 v3, p12

    move-object/from16 v4, p8

    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v4, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    const/4 v5, 0x0

    iget-boolean v6, v0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    iget v6, v0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v7

    sub-int v7, p7, v7

    goto :goto_0

    :cond_1
    move/from16 v7, p7

    :goto_0
    add-int v6, p5, v7

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    iget v8, v0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/2addr v8, p4

    add-int/2addr v8, p3

    int-to-float v8, v8

    iget v9, v0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    int-to-float v9, v9

    move-object v10, p1

    invoke-virtual {p1, v8, v6, v9, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v9, v0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v9, :cond_2

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :cond_3
    move-object v10, p1

    move/from16 v7, p7

    :goto_1
    return-void
.end method

.method public whitelist getBulletRadius()I
    .locals 1

    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return v0
.end method

.method public whitelist getColor()I
    .locals 1

    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return v0
.end method

.method public whitelist getGapWidth()I
    .locals 1

    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    return v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .locals 2

    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BulletSpan{gapWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getGapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bulletRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getBulletRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
