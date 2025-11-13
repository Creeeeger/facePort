.class public final Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentDescription:Ljava/lang/String;

.field public final icon:Lkotlin/jvm/functions/Function3;

.field public final label:Lkotlin/jvm/functions/Function3;

.field public final onItemSelected:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function3;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;->onItemSelected:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;->icon:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;->label:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/Item;->contentDescription:Ljava/lang/String;

    return-void
.end method
