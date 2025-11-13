.class Lcom/samsung/android/settings/general/MainClearModemReset$2;
.super Ljava/lang/Object;
.source "MainClearModemReset.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/general/MainClearModemReset;->onStart(Landroid/content/Intent;I)V
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

    .line 236
    iput-object p1, p0, Lcom/samsung/android/settings/general/MainClearModemReset$2;->this$0:Lcom/samsung/android/settings/general/MainClearModemReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MainClearModemReset"

    const-string v1, "MasterClearModemReset-Timeout"

    .line 239
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/general/MainClearModemReset$2;->this$0:Lcom/samsung/android/settings/general/MainClearModemReset;

    invoke-static {p0}, Lcom/samsung/android/settings/general/MainClearModemReset;->-$$Nest$msendMainClearIntent(Lcom/samsung/android/settings/general/MainClearModemReset;)V

    return-void
.end method
