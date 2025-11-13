.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->$r8$lambda$eZiF8TzMRRL3wGBFPnhwkcUK5-o(Lcom/android/keyguard/KeyguardSecurityContainer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
