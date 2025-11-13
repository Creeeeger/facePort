.class public Landroid/text/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist STANDARD_COLOR:I = -0xffff01

.field public static final whitelist STANDARD_GAP_WIDTH_PX:I = 0x2

.field public static final whitelist STANDARD_STRIPE_WIDTH_PX:I = 0x2


# instance fields
.field private final greylist-max-o mColor:I

.field private final greylist-max-o mGapWidth:I

.field private final greylist-max-o mStripeWidth:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    const v0, -0xffff01

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v1}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/QuoteSpan;->mColor:I

    iput p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iput p3, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 13

    move-object v0, p0

    move-object v7, p2

    move/from16 v8, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, v0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    move/from16 v11, p5

    int-to-float v3, v11

    iget v1, v0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    mul-int v1, v1, p4

    add-int/2addr v1, v8

    int-to-float v4, v1

    move/from16 v12, p7

    int-to-float v5, v12

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public whitelist getColor()I
    .locals 1

    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    return v0
.end method

.method public whitelist getGapWidth()I
    .locals 1

    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .locals 2

    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iget v1, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public whitelist getStripeWidth()I
    .locals 1

    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuoteSpan{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stripeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getStripeWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gapWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getGapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0, p1, p2}, Landroid/text/style/QuoteSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
