.class public final synthetic Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardMessageArea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    return-void
.end method
