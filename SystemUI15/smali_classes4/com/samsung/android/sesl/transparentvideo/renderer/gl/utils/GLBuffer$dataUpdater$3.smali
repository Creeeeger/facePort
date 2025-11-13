.class final Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$3;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer$dataUpdater$3;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/gl/utils/GLBuffer;->dataBuffer:Ljava/nio/Buffer;

    check-cast p0, Ljava/nio/IntBuffer;

    check-cast p1, [I

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
