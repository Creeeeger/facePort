.class public final synthetic Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    check-cast p1, Landroid/util/Property;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;->run()V

    return-void
.end method
