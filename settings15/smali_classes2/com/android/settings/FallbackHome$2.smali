.class public final Lcom/android/settings/FallbackHome$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/FallbackHome;


# direct methods
.method public constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$2;->this$0:Lcom/android/settings/FallbackHome;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/FallbackHome$2;->this$0:Lcom/android/settings/FallbackHome;

    sget p1, Lcom/android/settings/FallbackHome;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method
