.class public final synthetic Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    return-void
.end method
