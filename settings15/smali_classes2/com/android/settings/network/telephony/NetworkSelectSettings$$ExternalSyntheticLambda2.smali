.class public final synthetic Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

.field public final synthetic f$1:Lcom/android/internal/telephony/OperatorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->$r8$lambda$E99ImGfWLxhQDz0nycdBWT6qFO8(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method
