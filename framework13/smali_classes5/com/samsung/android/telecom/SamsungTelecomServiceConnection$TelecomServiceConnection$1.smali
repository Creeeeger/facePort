.class Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;
.super Ljava/lang/Object;
.source "SamsungTelecomServiceConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;->this$1:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;->this$1:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;

    iget-object v0, v0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-virtual {v0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->connectToSamsungTelecom()V

    .line 27
    return-void
.end method
