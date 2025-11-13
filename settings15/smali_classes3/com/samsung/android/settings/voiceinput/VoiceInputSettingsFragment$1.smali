.class Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    const-string v0, "VoiceInputSettingsFragment"

    const-string v1, "langPackResultObservable onComplete "

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "langPackResultObservable onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInputSettingsFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "langPackResultObservable onNext "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceInputSettingsFragment"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string p1, "VoiceInputSettingsFragment"

    const-string v0, "langPackResultObservable onSubscribe"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1;->this$0:Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;->-$$Nest$fgetmListenerArrayList(Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/voiceinput/VoiceInputSettingsFragment$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
