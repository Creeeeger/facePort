.class public final synthetic Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    sget v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->show()V

    return-void
.end method
