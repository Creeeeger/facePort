.class public Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;
.super Lcom/samsung/android/settings/widget/SecUnclickablePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBiometricType:I

.field public final mContext:Landroid/content/Context;

.field public mGkPwHandle:J

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mGkPwHandle:J

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mBiometricType:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mUserId:I

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0821

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;)V

    const v1, 0x7f0a103c

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mBiometricType:I

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const v1, 0x7f14215e

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f14215f

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsTipPreference;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->makeTipLink(Landroid/content/Context;Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    :cond_2
    const-string p1, "BiometricsTipPreference"

    const-string v0, "Tip Link is wrong!!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method
