.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSCustomizerRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
