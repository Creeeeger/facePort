.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->-$$Nest$mshowResetDialog(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    :cond_1
    return-void
.end method
