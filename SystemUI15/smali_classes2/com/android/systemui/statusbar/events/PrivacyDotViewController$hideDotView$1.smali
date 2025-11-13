.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $dot:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;->$dot:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;->$dot:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;->$dot:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    :cond_0
    return-void
.end method
