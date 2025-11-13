.class public Lcom/samsung/android/settings/voiceinput/offline/Language;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mLangPackage:Ljava/lang/String;

.field private mLanguageName:Ljava/lang/String;

.field private mLocale:Ljava/util/Locale;

.field private mStatus:I

.field private mStoreIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLocale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLanguageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLangPackage:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "samsungapps://ProductDetail/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    const-string/jumbo p2, "type"

    const-string p3, "cover"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    const p1, 0x14000020

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getLangPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLangPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLanguageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    return p0
.end method

.method public final getStoreIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Language{mLanguageName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mLangPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLangPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mStoreIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
