.class public final Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeader;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    const v1, 0x7f0a04db

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f060983

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/battery/BatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FI)V

    :cond_2
    return-void
.end method
