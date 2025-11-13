.class public final Lcom/android/systemui/keyguard/SecLifecycle$Msg;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final msg:I

.field public final reason:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/SecLifecycle$Msg;->msg:I

    iput p2, p0, Lcom/android/systemui/keyguard/SecLifecycle$Msg;->reason:I

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/SecLifecycle$Msg;-><init>(II)V

    return-void
.end method
