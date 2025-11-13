.class Lcom/samsung/android/settings/general/MainClearModemReset$1;
.super Landroid/os/Handler;
.source "MainClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/MainClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/MainClearModemReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/MainClearModemReset;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/settings/general/MainClearModemReset$1;->this$0:Lcom/samsung/android/settings/general/MainClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 94
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f0

    const-string v1, "MainClearModemReset"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_0

    const-string p0, "Something weird happened"

    .line 105
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "modem CP2 reset done"

    .line 101
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/general/MainClearModemReset$1;->this$0:Lcom/samsung/android/settings/general/MainClearModemReset;

    invoke-static {p0}, Lcom/samsung/android/settings/general/MainClearModemReset;->-$$Nest$msendMainClearIntent(Lcom/samsung/android/settings/general/MainClearModemReset;)V

    goto :goto_0

    :cond_1
    const-string p1, "Modem reset is done"

    .line 97
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/general/MainClearModemReset$1;->this$0:Lcom/samsung/android/settings/general/MainClearModemReset;

    invoke-static {p0}, Lcom/samsung/android/settings/general/MainClearModemReset;->-$$Nest$msendMainClearIntent(Lcom/samsung/android/settings/general/MainClearModemReset;)V

    :goto_0
    return-void
.end method
