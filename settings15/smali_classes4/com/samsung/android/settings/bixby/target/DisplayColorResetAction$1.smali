.class public final Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction$1;->val$message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction;

    iget-object v0, v0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/DisplayColorResetAction$1;->val$message:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
