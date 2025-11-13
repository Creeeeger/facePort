.class Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;
.super Landroid/os/Handler;
.source "GalaxySystemUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;Landroid/os/Looper;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->-$$Nest$sfgetMSG_REQUEST_CHECK_FOR_UPDATE()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->-$$Nest$msetUpdateButtonState(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;Z)V

    .line 72
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->-$$Nest$mrunGalaxyStoreDeeplink(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->-$$Nest$mshowLatestUpdateDialog(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
