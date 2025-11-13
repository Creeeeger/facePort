.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isOpened:Z

.field public final synthetic $it:Lcom/android/systemui/keyguard/RankedStateListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/RankedStateListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$it:Lcom/android/systemui/keyguard/RankedStateListener;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$isOpened:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$it:Lcom/android/systemui/keyguard/RankedStateListener;

    iget-object v0, v0, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$isOpened:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;->onFoldStateChanged(Z)V

    return-void
.end method
