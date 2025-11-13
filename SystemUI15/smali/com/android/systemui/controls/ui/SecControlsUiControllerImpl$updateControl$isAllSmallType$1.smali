.class final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$1;
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
.field final synthetic $c:Landroid/service/controls/Control;


# direct methods
.method public constructor <init>(Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$1;->$c:Landroid/service/controls/Control;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object p1, p1, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$updateControl$isAllSmallType$1;->$c:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
