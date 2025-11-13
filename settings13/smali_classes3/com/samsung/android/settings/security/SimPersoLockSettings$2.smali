.class Lcom/samsung/android/settings/security/SimPersoLockSettings$2;
.super Landroid/os/Handler;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 134
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SimPersoLockSettings;->mH:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/security/SimPersoLockSettings$2;->this$0:Lcom/samsung/android/settings/security/SimPersoLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SimPersoLockSettings;->-$$Nest$mshowSoftInput(Lcom/samsung/android/settings/security/SimPersoLockSettings;)V

    :goto_0
    return-void
.end method
