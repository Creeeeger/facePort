.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$tileEditClickListener$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->fullTileCustomizerClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1008"

    const-string v0, "QUICK_PANEL_BUTTON"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
