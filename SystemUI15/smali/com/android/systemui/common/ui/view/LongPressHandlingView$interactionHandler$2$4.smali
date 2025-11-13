.class final Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$4;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$4;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->listener:Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$1;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
