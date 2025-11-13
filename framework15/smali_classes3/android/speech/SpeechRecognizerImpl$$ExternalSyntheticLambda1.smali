.class public final synthetic Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/ModelDownloadListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/ModelDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;->f$0:Landroid/speech/ModelDownloadListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;->f$0:Landroid/speech/ModelDownloadListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl;->lambda$handleTriggerModelDownload$1(Landroid/speech/ModelDownloadListener;)V

    return-void
.end method
