.class public final Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $sendEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/MicMode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/MicMode;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/bar/MicMode;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MicMode"

    const-string v0, "onClicked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/MicMode;

    iget-object v0, p1, Lcom/android/systemui/qs/bar/MicMode;->detailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    const-string p1, "QPPE1029"

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
