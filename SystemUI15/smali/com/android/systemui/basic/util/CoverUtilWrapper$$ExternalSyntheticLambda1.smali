.class public final synthetic Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;->f$0:Z

    iput p2, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;->f$0:Z

    iget p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/systemui/basic/util/ModuleType;

    check-cast p2, Ljava/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
