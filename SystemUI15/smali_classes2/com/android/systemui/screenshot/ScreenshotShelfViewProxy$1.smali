.class final Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotEvent;

    check-cast p2, Ljava/lang/Float;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;Ljava/lang/Float;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
