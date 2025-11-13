.class final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$4$1;
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
.field final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$4$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$4$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
