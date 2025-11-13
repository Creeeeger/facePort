.class public Lcom/samsung/android/settings/voiceinput/offline/Language;
.super Ljava/lang/Object;
.source "Language.java"


# instance fields
.field private mLangPackage:Ljava/lang/String;

.field private mLanguageName:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mStatus:I

.field private mStoreIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    return-void
.end method


# virtual methods
.method public getLanguageName()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLanguageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    return p0
.end method

.method public getStoreIntent()Landroid/content/Intent;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setLangPackage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLangPackage:Ljava/lang/String;

    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLanguageName:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    return-void
.end method

.method public setStoreIntent(Landroid/content/Intent;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mLangPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/Language;->mStoreIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
