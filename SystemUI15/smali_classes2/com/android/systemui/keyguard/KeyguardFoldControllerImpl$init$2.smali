.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;->this$0:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->changeFoldState(Z)V

    :cond_0
    return-void
.end method
