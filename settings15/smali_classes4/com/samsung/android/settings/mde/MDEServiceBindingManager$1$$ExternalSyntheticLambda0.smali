.class public final synthetic Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$1;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->sendMessage(ILandroid/os/Bundle;)V

    return-void
.end method
