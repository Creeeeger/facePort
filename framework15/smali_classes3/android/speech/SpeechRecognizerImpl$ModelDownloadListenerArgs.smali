.class Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;
.super Ljava/lang/Object;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelDownloadListenerArgs"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mIntent:Landroid/content/Intent;

.field final blacklist mModelDownloadListener:Landroid/speech/ModelDownloadListener;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;->mModelDownloadListener:Landroid/speech/ModelDownloadListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method
