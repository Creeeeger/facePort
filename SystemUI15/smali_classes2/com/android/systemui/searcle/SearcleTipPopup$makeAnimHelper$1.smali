.class public final Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimHelper$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addView rootView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearcleTipPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->rootView:Lcom/android/systemui/searcle/SearcleTipView;

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    const/16 v6, 0x7f6

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x3

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    invoke-static {}, Lcom/android/systemui/util/TestHelper;->isRoboUnitTest()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    :cond_0
    const-string v1, "SearcleTip"

    invoke-virtual {v9, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v0, p0, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
