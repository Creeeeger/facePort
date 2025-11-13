.class Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;
.super Landroid/os/Handler;
.source "EdgeScreenPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Landroid/os/Looper;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->access$000(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->-$$Nest$mlaunchEdgeScreen(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Z)V

    :cond_1
    :goto_0
    return-void
.end method
