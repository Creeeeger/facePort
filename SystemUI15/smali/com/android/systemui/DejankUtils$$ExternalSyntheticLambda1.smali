.class public final synthetic Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget p0, p0, Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda1;->f$0:I

    const-wide/16 v0, 0x1000

    const-string v2, "DejankUtils"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method
