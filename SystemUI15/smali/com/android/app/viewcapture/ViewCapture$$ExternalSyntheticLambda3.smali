.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/app/viewcapture/ViewCapture;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/app/viewcapture/ViewCapture;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$0:Lcom/android/app/viewcapture/ViewCapture;

    iput p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$0:Lcom/android/app/viewcapture/ViewCapture;

    iget p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    new-instance v5, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    invoke-direct {v5, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>(I)V

    iput-object v5, v4, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Lcom/android/app/viewcapture/ViewCapture$ViewRef;Lcom/android/app/viewcapture/ViewCapture$ViewRef;I)V

    sget-object v0, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    invoke-virtual {v0, p0}, Lcom/android/app/viewcapture/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
