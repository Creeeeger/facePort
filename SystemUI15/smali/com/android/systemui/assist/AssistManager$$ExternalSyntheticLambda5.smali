.class public final synthetic Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mBroadcastReceiver:Lcom/android/systemui/assist/AssistManager$8;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mFilter:Landroid/content/IntentFilter;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
