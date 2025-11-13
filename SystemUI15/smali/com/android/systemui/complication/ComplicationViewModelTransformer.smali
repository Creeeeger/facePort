.class public final Lcom/android/systemui/complication/ComplicationViewModelTransformer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mComplicationIdFactory:Lcom/android/systemui/complication/ComplicationId$Factory;

.field public final mComplicationIdMapping:Ljava/util/HashMap;

.field public final mViewModelComponentFactory:Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/complication/ComplicationId$Factory;

    invoke-direct {v0}, Lcom/android/systemui/complication/ComplicationId$Factory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdFactory:Lcom/android/systemui/complication/ComplicationId$Factory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mViewModelComponentFactory:Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;

    return-void
.end method
