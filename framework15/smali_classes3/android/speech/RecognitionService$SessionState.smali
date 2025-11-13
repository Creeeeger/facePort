.class Landroid/speech/RecognitionService$SessionState;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionState"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/speech/RecognitionService$Callback;

.field private blacklist mStartedDataDelivery:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;
    .locals 0

    iget-object p0, p0, Landroid/speech/RecognitionService$SessionState;->mCallback:Landroid/speech/RecognitionService$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/speech/RecognitionService$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/speech/RecognitionService$SessionState;-><init>(Landroid/speech/RecognitionService$Callback;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/speech/RecognitionService$Callback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionService$SessionState;->mCallback:Landroid/speech/RecognitionService$Callback;

    iput-boolean p2, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    return-void
.end method


# virtual methods
.method blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService$SessionState;->mCallback:Landroid/speech/RecognitionService$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    return-void
.end method
