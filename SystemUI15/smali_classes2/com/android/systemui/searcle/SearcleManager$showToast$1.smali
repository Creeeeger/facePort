.class public final Lcom/android/systemui/searcle/SearcleManager$showToast$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$showToast$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$showToast$1;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
