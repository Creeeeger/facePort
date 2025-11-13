.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;->$semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;->$semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/shared/model/MediaButton;->getActionById(I)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
