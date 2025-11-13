.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundedCornerLinearLayout.java"


# instance fields
.field private mCorners:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 38
    :try_start_0
    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->mCorners:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 39
    sget v0, Lcom/android/settings/R$color;->sesl_round_and_bgcolor_light:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->setRoundedCornerColor(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RoundedCorner"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->mCorners:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRoundedCornerColor(Landroid/content/Context;I)V
    .locals 1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->mCorners:Landroidx/appcompat/util/SeslRoundedCorner;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/16 p2, 0xf

    .line 48
    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerLinearLayout;->mCorners:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RoundedCorner"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
