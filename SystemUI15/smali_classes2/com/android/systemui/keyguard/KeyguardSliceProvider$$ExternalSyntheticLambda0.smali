.class public final synthetic Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

.field public final synthetic f$1:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
