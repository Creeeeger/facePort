.class Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckRecognitionSupportArgs"
.end annotation


# instance fields
.field public final blacklist callback:Landroid/speech/IRecognitionSupportCallback;

.field public final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field public final blacklist mIntent:Landroid/content/Intent;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->callback:Landroid/speech/IRecognitionSupportCallback;

    iput-object p3, p0, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;->mAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;Landroid/speech/RecognitionService$CheckRecognitionSupportArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/content/AttributionSource;)V

    return-void
.end method
