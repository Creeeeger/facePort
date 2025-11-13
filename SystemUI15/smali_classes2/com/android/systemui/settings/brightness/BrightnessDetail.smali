.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final adapter$delegate:Lkotlin/Lazy;

.field public final qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/settings/brightness/BrightnessDetail$adapter$2;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method
