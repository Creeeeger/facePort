.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

.field public final mMessage:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    return-void
.end method
