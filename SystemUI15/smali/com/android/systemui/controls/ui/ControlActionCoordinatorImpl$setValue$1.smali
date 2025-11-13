.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;
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
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $newValue:F

.field final synthetic $templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$templateId:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$newValue:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    new-instance v1, Landroid/service/controls/actions/FloatAction;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$templateId:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;->$newValue:F

    invoke-direct {v1, v2, p0}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
