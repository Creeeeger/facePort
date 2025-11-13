.class public final Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardClickController;


# instance fields
.field public isClickContainerArea:Lkotlin/jvm/functions/Function2;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyguardClickControllerImpl"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;->tag:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl$isClickContainerArea$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardClickControllerImpl$isClickContainerArea$1;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardClickControllerImpl;->isClickContainerArea:Lkotlin/jvm/functions/Function2;

    return-void
.end method
