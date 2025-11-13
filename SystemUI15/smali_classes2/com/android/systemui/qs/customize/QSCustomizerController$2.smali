.class public final Lcom/android/systemui/qs/customize/QSCustomizerController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->access$000(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->access$100(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide(Z)V

    :cond_1
    return-void
.end method
