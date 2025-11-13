.class Lcom/samsung/android/settings/security/SecIccLockSettings$1;
.super Landroid/os/Handler;
.source "SecIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SecIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 52
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$1;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecIccLockSettings;->access$000(Lcom/samsung/android/settings/security/SecIccLockSettings;)V

    :goto_0
    return-void
.end method
