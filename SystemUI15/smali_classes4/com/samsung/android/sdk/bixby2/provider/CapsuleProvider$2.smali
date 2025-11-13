.class public final Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

.field public final synthetic val$actionId:Ljava/lang/String;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

.field public final synthetic val$handler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

.field public final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$handler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$handler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;->executeAction()V

    return-void
.end method
