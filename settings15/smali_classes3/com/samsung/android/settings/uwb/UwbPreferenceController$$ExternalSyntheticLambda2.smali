.class public final synthetic Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->$r8$lambda$DCDnEm6Qb6k5gNQGOvGAcYTE9pE(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
