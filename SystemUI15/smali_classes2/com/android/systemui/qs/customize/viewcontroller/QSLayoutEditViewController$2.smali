.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    sget-object v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2$1;->INSTANCE:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2$1;

    sget-object v1, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2$2;->INSTANCE:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$2$2;

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->access$moveItem(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
