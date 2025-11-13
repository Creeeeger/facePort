.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5$2;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$5$2;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V

    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->access$moveItem(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
