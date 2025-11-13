.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->access$updateSimTypes(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
