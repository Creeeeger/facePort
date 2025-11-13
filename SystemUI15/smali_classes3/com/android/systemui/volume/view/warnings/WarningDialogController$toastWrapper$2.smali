.class final Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;
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
.field final synthetic this$0:Lcom/android/systemui/volume/view/warnings/WarningDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/WarningDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;->this$0:Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;->this$0:Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    invoke-interface {p0}, Lcom/android/systemui/volume/view/context/ViewContext;->getVolDeps()Lcom/android/systemui/volume/VolumeDependencyBase;

    move-result-object p0

    const-class v0, Lcom/android/systemui/volume/util/ToastWrapper;

    check-cast p0, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/ToastWrapper;

    return-object p0
.end method
