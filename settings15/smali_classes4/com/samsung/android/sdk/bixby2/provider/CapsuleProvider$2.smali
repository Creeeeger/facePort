.class public final Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

.field public final synthetic val$actionId:Ljava/lang/String;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

.field public final synthetic val$handler:Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

.field public final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$handler:Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    iput-object p3, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$actionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$params:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$callback:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$handler:Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->this$0:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$actionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$params:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->val$callback:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void
.end method
