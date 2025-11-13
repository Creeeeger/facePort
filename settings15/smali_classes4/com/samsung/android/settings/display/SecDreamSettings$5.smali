.class public final Lcom/samsung/android/settings/display/SecDreamSettings$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->performClick()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DreamBackend"

    const-string v0, "Failed to dream"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/16 p0, 0x2f

    const/16 p1, 0x10cd

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
