.class Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/DefaultPaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcPaymentCandidateInfo"
.end annotation


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mIsManagedProfile:Z

.field public final mKey:Ljava/lang/String;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mUserId:I

    iput-boolean p5, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mIsManagedProfile:Z

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final loadLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
