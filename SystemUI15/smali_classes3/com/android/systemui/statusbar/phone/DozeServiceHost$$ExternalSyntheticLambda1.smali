.class public final synthetic Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;->f$0:Z

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "LooperSlow"

    const-string/jumbo p2, "updateDozing %s AOD %dms "

    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
