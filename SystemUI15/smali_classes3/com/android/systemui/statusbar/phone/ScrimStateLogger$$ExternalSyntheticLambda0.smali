.class public final synthetic Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    return-void
.end method
