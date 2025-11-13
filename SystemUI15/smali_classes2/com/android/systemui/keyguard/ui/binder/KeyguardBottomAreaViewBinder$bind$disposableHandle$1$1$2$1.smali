.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $endButton:Landroid/widget/ImageView;

.field public final synthetic $falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final synthetic $messageDisplayer:Lkotlin/jvm/functions/Function1;

.field public final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;Landroid/widget/ImageView;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;",
            "Landroid/widget/ImageView;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$endButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$messageDisplayer:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$endButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$messageDisplayer:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2$1;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->access$updateButton(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;Landroid/widget/ImageView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordanceViewModel;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/VibratorHelper;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
