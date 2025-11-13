.class Lcom/android/systemui/dreams/conditions/DreamCondition$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/conditions/DreamCondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/conditions/DreamCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/DreamCondition$1;->this$0:Lcom/android/systemui/dreams/conditions/DreamCondition;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDreamingStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition$1;->this$0:Lcom/android/systemui/dreams/conditions/DreamCondition;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    return-void
.end method
