.class public final synthetic Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiConfigController2$2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiConfigController2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/wifi/WifiConfigController2$2;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->showWarningMessagesIfAppropriate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->enableSubmitIfAppropriate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
