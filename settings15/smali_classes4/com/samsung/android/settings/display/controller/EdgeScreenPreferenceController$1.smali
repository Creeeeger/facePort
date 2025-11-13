.class public final Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->-$$Nest$mlaunchEdgeScreen(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Z)V

    :cond_1
    :goto_0
    return-void
.end method
