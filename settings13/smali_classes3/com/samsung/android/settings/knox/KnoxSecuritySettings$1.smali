.class Lcom/samsung/android/settings/knox/KnoxSecuritySettings$1;
.super Landroid/os/Handler;
.source "KnoxSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$1;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 289
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "KKG::KnoxSecuritySettings"

    const-string v1, "MSG_UNIFY_LOCK"

    .line 291
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$1;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings;->-$$Nest$munify(Lcom/samsung/android/settings/knox/KnoxSecuritySettings;)V

    :goto_0
    return-void
.end method
