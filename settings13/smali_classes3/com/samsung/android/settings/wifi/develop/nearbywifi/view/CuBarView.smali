.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;
.super Landroid/widget/LinearLayout;
.source "CuBarView.java"


# instance fields
.field private isYaxis:Z

.field private mChannel:Landroid/widget/TextView;

.field private mCu:I

.field private mCuBar:Landroid/widget/TextView;

.field private mCuValue:Landroid/widget/TextView;

.field private mFreq:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->init()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->init()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->init()V

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->init()V

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private getPixelsFromDp(F)F
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_development_nearbywifi_cu_bar_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, Lcom/android/settings/R$id;->cu_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/android/settings/R$id;->cu_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/android/settings/R$id;->channel_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/android/settings/R$id;->channel_freq:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    return-void
.end method

.method private setHeight(I)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCu()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCu:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 116
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 119
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 120
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    const/high16 v2, 0x430c0000    # 140.0f

    .line 121
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->getPixelsFromDp(F)F

    move-result v2

    sub-float v8, v0, v2

    const/high16 v2, 0x41600000    # 14.0f

    .line 123
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->getPixelsFromDp(F)F

    move-result v9

    .line 125
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const v2, -0x333334

    .line 126
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 127
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    if-eqz p0, :cond_0

    move-object v2, p1

    move v3, v1

    move v4, v8

    move v5, v1

    move v6, v0

    move-object v7, v10

    .line 131
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object v2, p1

    move v3, v1

    move v4, v8

    move v5, v1

    move v6, v0

    move-object v7, v10

    .line 133
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p0, v8, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v0

    move v5, v1

    move v6, v0

    move-object v7, v10

    .line 135
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float/2addr v0, v9

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setChannel(I)V
    .locals 3

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCu(III)V
    .locals 1

    .line 86
    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCu:I

    .line 87
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setHeight(I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setYaxis()V
    .locals 3

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->setHeight(I)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_development_nearbywifi_ch:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_development_nearbywifi_freq:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->getPixelsFromDp(F)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHeight(I)V

    return-void
.end method
