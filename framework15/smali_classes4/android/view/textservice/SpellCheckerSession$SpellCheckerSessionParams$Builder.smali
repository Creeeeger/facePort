.class public final Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mLocale:Ljava/util/Locale;

.field private blacklist mShouldReferToSpellCheckerLanguageSettings:Z

.field private blacklist mSupportedAttributes:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    .locals 8

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLocale should not be null if  mShouldReferToSpellCheckerLanguageSettings is false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    iget v5, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    iget-object v6, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;-><init>(Ljava/util/Locale;ZILandroid/os/Bundle;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public whitelist setShouldReferToSpellCheckerLanguageSettings(Z)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    return-object p0
.end method

.method public whitelist setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    return-object p0
.end method
