.class Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;
.super Ljava/lang/Object;
.source "VoiceInputSettingsFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->initLangPackUpdateObservable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;


# direct methods
.method public static synthetic $r8$lambda$5vPsenu7q5BrIDfYnG1QuTXMunE(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->lambda$onSubscribe$0(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WH53eN_CCt_JqL_GGBZ0tuqM9lw(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->lambda$onError$1(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WdmZ2PY_ksrhsbB8xOqgdb9njqc(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->lambda$onComplete$2(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onComplete$2(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V
    .locals 0

    .line 110
    invoke-interface {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;->onLangPackResultUpdated()V

    return-void
.end method

.method private static synthetic lambda$onError$1(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V
    .locals 0

    .line 104
    invoke-interface {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;->onLangPackResultUpdated()V

    return-void
.end method

.method private static synthetic lambda$onSubscribe$0(Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;)V
    .locals 0

    .line 92
    invoke-interface {p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;->onLangPackResultSubscribed()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const-string v0, "VoiceInputSettingsFragment"

    const-string v1, "langPackResultObservable onComplete "

    .line 109
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "langPackResultObservable onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInputSettingsFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 0

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "langPackResultObservable onNext "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceInputSettingsFragment"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string p1, "VoiceInputSettingsFragment"

    const-string v0, "langPackResultObservable onSubscribe"

    .line 91
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
