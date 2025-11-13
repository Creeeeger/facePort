.class public final Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ProfileShareCasterDialog"

    const-string v0, "Time out! 20000"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;->this$0:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void
.end method
