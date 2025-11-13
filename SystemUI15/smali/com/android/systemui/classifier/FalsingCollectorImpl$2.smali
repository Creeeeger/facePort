.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSensorRegistration()V

    return-void
.end method
