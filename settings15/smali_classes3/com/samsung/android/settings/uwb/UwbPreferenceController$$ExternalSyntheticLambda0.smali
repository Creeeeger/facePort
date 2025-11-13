.class public final synthetic Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/uwb/UwbManager$AdapterStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    iput-object p3, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onStateChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->$r8$lambda$XDxguLCdWNQw_c4LwcvopnIPm6A(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;II)V

    return-void
.end method
