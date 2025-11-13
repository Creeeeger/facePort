.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private greylist-max-o mCallerUid:I

.field private greylist-max-o mCountry:Ljava/lang/String;

.field private greylist-max-o mLanguage:Ljava/lang/String;

.field private final greylist-max-o mParams:Landroid/os/Bundle;

.field private greylist-max-o mPitch:I

.field private greylist-max-o mSpeechRate:I

.field private final greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mVariant:Ljava/lang/String;

.field private greylist-max-o mVoiceName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist getCallerUid()I
    .locals 1

    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return v0
.end method

.method public whitelist getCharSequenceText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPitch()I
    .locals 1

    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public whitelist getSpeechRate()I
    .locals 1

    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVariant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVoiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o setCallerUid(I)V
    .locals 0

    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return-void
.end method

.method greylist-max-o setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-void
.end method

.method greylist-max-o setPitch(I)V
    .locals 0

    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return-void
.end method

.method greylist-max-o setSpeechRate(I)V
    .locals 0

    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return-void
.end method

.method greylist-max-o setVoiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-void
.end method
