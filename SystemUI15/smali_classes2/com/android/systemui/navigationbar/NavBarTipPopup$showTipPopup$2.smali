.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method
