.class public final Lcom/android/systemui/authentication/AuthenticationModule$getSecurityMode$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $model:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/authentication/AuthenticationModule$getSecurityMode$1;->$model:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/authentication/AuthenticationModule$getSecurityMode$1;->$model:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method
