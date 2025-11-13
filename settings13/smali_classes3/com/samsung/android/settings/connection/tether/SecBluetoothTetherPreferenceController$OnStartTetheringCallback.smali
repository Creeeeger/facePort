.class final Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "SecBluetoothTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final bluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V
    .locals 0

    .line 720
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;->bluetoothTetherController:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 732
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onTetheringFailed()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 726
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onTetheringStarted()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
