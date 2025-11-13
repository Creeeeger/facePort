.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;
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


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-wide v0, v0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x200

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    return-object p1
.end method
