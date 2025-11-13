.class Lcom/kddi/android/CpaNotiReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CpaNotiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kddi/android/CpaNotiReceiver;->startGbookModeReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/kddi/android/CpaNotiReceiver;


# direct methods
.method constructor blacklist <init>(Lcom/kddi/android/CpaNotiReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kddi/android/CpaNotiReceiver;

    .line 339
    iput-object p1, p0, Lcom/kddi/android/CpaNotiReceiver$1;->this$0:Lcom/kddi/android/CpaNotiReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 342
    return-void
.end method
