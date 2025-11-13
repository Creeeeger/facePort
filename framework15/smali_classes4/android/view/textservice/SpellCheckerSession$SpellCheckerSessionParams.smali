.class public Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckerSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mShouldReferToSpellCheckerLanguageSettings:Z

.field private final blacklist mSupportedAttributes:I


# direct methods
.method private constructor blacklist <init>(Ljava/util/Locale;ZILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mLocale:Ljava/util/Locale;

    iput-boolean p2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mShouldReferToSpellCheckerLanguageSettings:Z

    iput p3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mSupportedAttributes:I

    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;ZILandroid/os/Bundle;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;-><init>(Ljava/util/Locale;ZILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getSupportedAttributes()I
    .locals 1

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mSupportedAttributes:I

    return v0
.end method

.method public whitelist shouldReferToSpellCheckerLanguageSettings()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mShouldReferToSpellCheckerLanguageSettings:Z

    return v0
.end method
