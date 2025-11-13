.class public final Lcom/android/systemui/qs/SecFgsManagerController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dialogConsumer:Ljava/util/function/Consumer;

.field public final dialogSupplier:Ljava/util/function/Supplier;

.field public noItemTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/SecFgsManagerController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecFgsManagerController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Supplier;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerController;->dialogConsumer:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/qs/SecFgsManagerController;->dialogSupplier:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecFgsManagerController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
