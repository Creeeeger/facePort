.class final Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$2;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$2;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->changeFavoriteStatus(Ljava/lang/String;Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
