.class public Landroid/text/style/LineBackgroundSpan$Standard;
.super Ljava/lang/Object;
.source "LineBackgroundSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineBackgroundSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final blacklist mColor:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 13

    move-object v6, p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    move-object v8, p0

    iget v0, v8, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v9, p3

    int-to-float v1, v9

    move/from16 v10, p5

    int-to-float v2, v10

    move/from16 v11, p4

    int-to-float v3, v11

    move/from16 v12, p7

    int-to-float v4, v12

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final whitelist getColor()I
    .locals 1

    iget v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/LineBackgroundSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineBackgroundSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
