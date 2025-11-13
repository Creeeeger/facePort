.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;
.super Landroidx/preference/SecPreference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;


# direct methods
.method public static synthetic $r8$lambda$lyu6Df8Y4Qs5bHi5OUJiq3XUXhA(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1835
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 1831
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1827
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1822
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    .line 1823
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)Z
    .locals 1

    .line 1860
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x2019

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 1861
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->this$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->-$$Nest$mstartSelectListUI(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;I[Z)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 1847
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1852
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 1853
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    .line 1855
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 1856
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1857
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1859
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 1843
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
