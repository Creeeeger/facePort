.class public final synthetic Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;->$tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;->$tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateContents()V

    goto :goto_0

    :cond_0
    return-void
.end method
