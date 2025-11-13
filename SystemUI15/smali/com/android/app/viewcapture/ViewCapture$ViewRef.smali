.class public final Lcom/android/app/viewcapture/ViewCapture$ViewRef;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

.field public childCount:I

.field public elapsedRealtimeNanos:J

.field public next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

.field public view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->elapsedRealtimeNanos:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
