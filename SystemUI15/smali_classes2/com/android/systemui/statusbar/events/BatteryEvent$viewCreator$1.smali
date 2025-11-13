.class final Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $chargerType:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/events/BatteryEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/BatteryEvent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;->this$0:Lcom/android/systemui/statusbar/events/BatteryEvent;

    iput p2, p0, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;->$chargerType:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;->this$0:Lcom/android/systemui/statusbar/events/BatteryEvent;

    iget p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;->$chargerType:I

    iget p1, p1, Lcom/android/systemui/statusbar/events/BatteryEvent;->batteryLevel:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelText:Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;

    iput p1, v1, Lcom/android/systemui/statusbar/events/BatteryStatusChipClearTextView;->level:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071478

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x64

    const/4 v5, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgressBg:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x64

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryLevelProgress:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const p0, 0x7f12002a

    goto :goto_0

    :cond_0
    const p0, 0x7f12002b

    goto :goto_0

    :cond_1
    const p0, 0x7f120029

    :goto_0
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    return-object v0
.end method
