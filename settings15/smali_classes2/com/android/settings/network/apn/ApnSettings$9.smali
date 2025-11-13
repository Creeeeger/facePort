.class public final Lcom/android/settings/network/apn/ApnSettings$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$9;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$9;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsService connect : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    const-string v1, "ApnSettings"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final onDisconnected()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$9;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsService disconnect : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsImsServiceConnected:Z

    const-string v1, "ApnSettings"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method
