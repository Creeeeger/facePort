.class public final Lcom/android/systemui/assist/AssistManager$6;
.super Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$6;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartPerceiving()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$6;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryDetectionAttentionListener:Lcom/android/systemui/assist/AssistManager$1;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AssistUtils;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$6;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    const-string v0, "assist_attention"

    const v1, 0x7f08080c

    const/4 v2, 0x0

    const-string v3, "Attention Icon for Assistant"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onStopPerceiving()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$6;->this$0:Lcom/android/systemui/assist/AssistManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistManager;->-$$Nest$mhandleVisualAttentionChanged(Lcom/android/systemui/assist/AssistManager;Z)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$6;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->disableVisualQueryDetection()V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$6;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    const-string v0, "assist_attention"

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
