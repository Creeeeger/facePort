.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/ScreenDecorations;

    check-cast p1, Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->onFaceSensorLocationChanged(Landroid/graphics/Point;)V

    return-void
.end method
