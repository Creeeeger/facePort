.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->isFalseSeek:Z

    :cond_0
    return-void
.end method
