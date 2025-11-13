.class public final Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final feature$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder$feature$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->feature$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->feature$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    return-object p0
.end method
