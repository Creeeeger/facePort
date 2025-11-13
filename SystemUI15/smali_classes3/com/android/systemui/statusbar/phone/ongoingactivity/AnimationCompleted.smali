.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/AnimationCompleted;
.super Ljava/util/concurrent/CancellationException;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/AnimationCompleted;->reason:Ljava/lang/String;

    return-void
.end method
