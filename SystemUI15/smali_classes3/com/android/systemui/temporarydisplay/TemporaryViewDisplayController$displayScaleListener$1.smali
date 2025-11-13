.class public final Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    invoke-static {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->access$reinflateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$displayScaleListener$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    invoke-static {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->access$reinflateView(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;)V

    return-void
.end method
