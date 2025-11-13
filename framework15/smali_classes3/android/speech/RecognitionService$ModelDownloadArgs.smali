.class Landroid/speech/RecognitionService$ModelDownloadArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelDownloadArgs"
.end annotation


# instance fields
.field final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field final blacklist mIntent:Landroid/content/Intent;

.field final blacklist mListener:Landroid/speech/IModelDownloadListener;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mAttributionSource:Landroid/content/AttributionSource;

    iput-object p3, p0, Landroid/speech/RecognitionService$ModelDownloadArgs;->mListener:Landroid/speech/IModelDownloadListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;Landroid/speech/RecognitionService$ModelDownloadArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService$ModelDownloadArgs;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    return-void
.end method
