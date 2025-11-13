.class public final synthetic Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "context is null"

    const-string v1, "DefaultCombinedPicker"

    iget v2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    sget-object v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->update$7$1()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    sget-object v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->update$7$1()V

    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    sget-object v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->update$7$1()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
