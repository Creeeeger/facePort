.class public final Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public countDownTimer:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;

.field public final dialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

.field public final keyguardUpdateMonitor$delegate:Lkotlin/Lazy;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public final updateMonitorCallback:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->dialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    sget-object p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$keyguardUpdateMonitor$2;->INSTANCE:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$keyguardUpdateMonitor$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->keyguardUpdateMonitor$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$resourcePicker$2;->INSTANCE:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$resourcePicker$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->resourcePicker$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->updateMonitorCallback:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;

    return-void
.end method
