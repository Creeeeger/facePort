.class public final Lcom/android/systemui/assist/AssistManager$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$opts:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager$5;->val$opts:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$5;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager$5;->val$opts:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method
