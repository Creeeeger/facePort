.class public Lcom/android/settings/Settings$MobileNetworkActivity;
.super Lcom/android/settings/SettingsActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkIntentConverter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/MobileNetworkIntentConverter;->apply(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MobileNetworkActivity"

    const-string v1, "Starting onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkIntentConverter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$MobileNetworkActivity;->mIntentConverter:Lcom/android/settings/network/MobileNetworkIntentConverter;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->apply(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->createUiFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
