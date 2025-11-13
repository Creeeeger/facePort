.class public final Lcom/android/systemui/power/PowerUI$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mInVrMode:Z

    return-void
.end method
