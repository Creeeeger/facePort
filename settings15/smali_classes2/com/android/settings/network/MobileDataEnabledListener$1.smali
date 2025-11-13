.class public final Lcom/android/settings/network/MobileDataEnabledListener$1;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/network/MobileDataEnabledListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/MobileDataEnabledListener;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->this$0:Lcom/android/settings/network/MobileDataEnabledListener;

    const-string p1, "mobile_data"

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/network/MobileDataEnabledListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->this$0:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onChanged$1()V
    .locals 2

    iget v0, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->this$0:Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object v1, v0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/network/MobileDataEnabledListener;->mListener:Lcom/android/settings/network/MobileDataEnabledListener$1;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->this$0:Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object p0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    invoke-interface {p0}, Lcom/android/settings/network/MobileDataEnabledListener$Client;->onMobileDataEnabledChange()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/network/MobileDataEnabledListener$1;->this$0:Lcom/android/settings/network/MobileDataEnabledListener;

    iget-object p0, p0, Lcom/android/settings/network/MobileDataEnabledListener;->mClient:Lcom/android/settings/network/MobileDataEnabledListener$Client;

    invoke-interface {p0}, Lcom/android/settings/network/MobileDataEnabledListener$Client;->onMobileDataEnabledChange()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
