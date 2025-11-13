.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

.field public final mColorSetListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda1;

.field public mCurrentColor:I

.field public mRecentlyUsedColor:[I

.field public mShowOpacitySeekBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mColorSetListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const-string v1, "current_color"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mCurrentColor:I

    const-string/jumbo v1, "recently_used_color"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mRecentlyUsedColor:[I

    const-string/jumbo v1, "show_opacity_seekbar"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mShowOpacitySeekBar:Z

    new-instance p1, Landroidx/picker3/app/SeslColorPickerDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mColorSetListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda1;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mCurrentColor:I

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mRecentlyUsedColor:[I

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mShowOpacitySeekBar:Z

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/picker3/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;I[IZ)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintIconColorPicker;->mColorPickerDialog:Landroidx/picker3/app/SeslColorPickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
