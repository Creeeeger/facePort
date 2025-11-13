.class final Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "SecEthernetTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final EthernetController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;->EthernetController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    return-void
.end method

.method private update()V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;->EthernetController:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;->update()V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;->update()V

    return-void
.end method
