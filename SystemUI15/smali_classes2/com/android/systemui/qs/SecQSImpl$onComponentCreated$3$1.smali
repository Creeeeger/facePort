.class public final synthetic Lcom/android/systemui/qs/SecQSImpl$onComponentCreated$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/SecQSImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSImpl$onComponentCreated$3$1;->$tmp0:Lcom/android/systemui/qs/SecQSImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl$onComponentCreated$3$1;->$tmp0:Lcom/android/systemui/qs/SecQSImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->updateAnimators()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method
