.class public final Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget p1, Lcom/samsung/android/settings/display/SecDreamSettings;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    return-void
.end method
