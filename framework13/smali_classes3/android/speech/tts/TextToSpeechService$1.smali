.class Landroid/speech/tts/TextToSpeechService$1;
.super Landroid/speech/tts/ITextToSpeechService$Stub;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    .line 1300
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist checkNonNull([Ljava/lang/Object;)Z
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1534
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1535
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    return v1

    .line 1534
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1537
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .line 1530
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getClientDefaultLanguage()[Ljava/lang/String;
    .locals 1

    .line 1413
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$mgetSettingsLocale(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 1504
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1505
    return-object v2

    .line 1507
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1509
    .local v1, "retVal":I
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 1514
    :cond_1
    return-object v2

    .line 1512
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 1432
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1433
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1434
    .local v1, "featuresArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1435
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1436
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 1438
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    .line 1440
    :goto_0
    return-object v1
.end method

.method public blacklist getLanguage()[Ljava/lang/String;
    .locals 1

    .line 1408
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetVoices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 1422
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    const/4 v0, -0x1

    return v0

    .line 1426
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist isSpeaking()Z
    .locals 1

    .line 1394
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .line 1450
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-direct {v0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, -0x1

    if-nez v1, :cond_0

    .line 1451
    return v11

    .line 1453
    :cond_0
    iget-object v1, v0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual {v1, v9, v12, v13}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1455
    .local v14, "retVal":I
    if-eqz v14, :cond_1

    if-eq v14, v10, :cond_1

    const/4 v1, 0x2

    if-ne v14, v1, :cond_2

    .line 1459
    :cond_1
    new-instance v15, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;

    iget-object v2, v0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1463
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, v15

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    .local v1, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v2, v0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1470
    return v11

    .line 1473
    .end local v1    # "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_2
    return v14
.end method

.method public blacklist loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 10
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "voiceName"    # Ljava/lang/String;

    .line 1483
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1484
    return v2

    .line 1486
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1, p2}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    move-result v1

    .line 1488
    .local v1, "retVal":I
    if-nez v1, :cond_1

    .line 1489
    new-instance v9, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move-object v3, v9

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V

    .line 1495
    .local v3, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    return v2

    .line 1500
    .end local v3    # "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_1
    return v1
.end method

.method public blacklist playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 9
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "audioUri"    # Landroid/net/Uri;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    .line 1360
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    const/4 v0, -0x1

    return v0

    .line 1364
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1368
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, v0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1372
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    return v1
.end method

.method public blacklist playSilence(Landroid/os/IBinder;JILjava/lang/String;)I
    .locals 9
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "duration"    # J
    .param p4, "queueMode"    # I
    .param p5, "utteranceId"    # Ljava/lang/String;

    .line 1378
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    const/4 v0, -0x1

    return v0

    .line 1382
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1386
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, v0

    move-object v3, p1

    move-object v6, p5

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;J)V

    .line 1389
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    return v1
.end method

.method public blacklist setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 2
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .line 1521
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    return-void

    .line 1525
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 1526
    return-void
.end method

.method public blacklist speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 9
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    .line 1308
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    const/4 v0, -0x1

    return v0

    .line 1312
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1316
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, v0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1320
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    return v1
.end method

.method public blacklist stop(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "caller"    # Landroid/os/IBinder;

    .line 1399
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    const/4 v0, -0x1

    return v0

    .line 1403
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 13
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    .line 1330
    move-object v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const/4 v3, 0x3

    aput-object p4, v1, v3

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    const/4 v1, -0x1

    return v1

    .line 1337
    :cond_0
    nop

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1340
    .local v1, "sameFileDescriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v12, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;

    iget-object v4, v0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v11, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v12

    move-object v5, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v10, p2

    invoke-direct/range {v3 .. v11}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V

    .line 1350
    .local v3, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v4, v0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v2

    return v2
.end method
