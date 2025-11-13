.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p1, 0x2028

    const/16 p2, 0x2025

    iget p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mOptionsMenu:Landroid/view/Menu;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mOptionsMenu:Landroid/view/Menu;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
