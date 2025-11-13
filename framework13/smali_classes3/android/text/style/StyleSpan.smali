.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mFontWeightAdjustment:I

.field private final greylist-max-o mStyle:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "style"    # I

    .line 63
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 78
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 79
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 80
    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 91
    return-void
.end method

.method private static blacklist apply(Landroid/graphics/Paint;II)V
    .locals 8
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 152
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    .local v1, "oldStyle":I
    goto :goto_0

    .line 155
    .end local v1    # "oldStyle":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 158
    .restart local v1    # "oldStyle":I
    :goto_0
    or-int v2, v1, p1

    .line 162
    .local v2, "want":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v3

    const/high16 v4, -0x41800000    # -0.25f

    cmpl-float v3, v3, v4

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-ne p1, v5, :cond_1

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 163
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 167
    :cond_1
    if-nez v0, :cond_2

    .line 168
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, "tf":Landroid/graphics/Typeface;
    goto :goto_1

    .line 170
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_2
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 174
    .restart local v3    # "tf":Landroid/graphics/Typeface;
    :goto_1
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_4

    .line 175
    if-eqz p2, :cond_4

    const v6, 0x7fffffff

    if-eq p2, v6, :cond_4

    .line 177
    nop

    .line 178
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getWeight()I

    move-result v6

    add-int/2addr v6, p2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x3e8

    .line 177
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 180
    .local v6, "newWeight":I
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 181
    .local v7, "italic":Z
    :goto_2
    invoke-static {v3, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    .line 185
    .end local v6    # "newWeight":I
    .end local v7    # "italic":Z
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    not-int v6, v6

    and-int/2addr v6, v2

    .line 187
    .local v6, "fake":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_5

    .line 188
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 191
    :cond_5
    and-int/lit8 v5, v6, 0x2

    if-eqz v5, :cond_6

    .line 192
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 195
    :cond_6
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFontWeightAdjustment()I
    .locals 1

    .line 135
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    .line 101
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist getStyle()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 140
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 141
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 145
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 146
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 112
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void
.end method
