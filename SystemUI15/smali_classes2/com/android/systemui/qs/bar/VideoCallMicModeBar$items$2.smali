.class public final synthetic Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;->$tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$2;->$tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->updateBarVisibilities$1()V

    return-void
.end method
