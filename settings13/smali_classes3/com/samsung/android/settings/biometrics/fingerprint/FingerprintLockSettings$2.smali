.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V
    .locals 0

    .line 1302
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FpstFingerprintLockSettings"

    const-string p1, "showDatabaseFailureDialog"

    .line 1304
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
