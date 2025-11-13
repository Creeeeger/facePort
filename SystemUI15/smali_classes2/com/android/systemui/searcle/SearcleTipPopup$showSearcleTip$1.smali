.class public final Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isRetryShowing:Z

.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    iput-boolean p2, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->$isRetryShowing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    invoke-static {v0}, Lcom/android/systemui/searcle/SearcleTipPopup;->access$show(Lcom/android/systemui/searcle/SearcleTipPopup;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->$isRetryShowing:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getSearcleTipCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "SearcleTipCount"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
