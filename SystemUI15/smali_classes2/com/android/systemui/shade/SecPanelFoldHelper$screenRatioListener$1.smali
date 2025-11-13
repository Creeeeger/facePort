.class public final Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final INTENT_ACTION:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->INTENT_ACTION:Ljava/lang/String;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->INTENT_ACTION:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->INTENT_ACTION:Ljava/lang/String;

    const-string p2, "onReceive("

    const-string v0, ")"

    const-string v1, "SecPanelFoldHelper"

    invoke-static {p2, p1, v0, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;->this$0:Lcom/android/systemui/shade/SecPanelFoldHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
