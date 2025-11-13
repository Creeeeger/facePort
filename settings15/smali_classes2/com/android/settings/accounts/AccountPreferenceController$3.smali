.class public final Lcom/android/settings/accounts/AccountPreferenceController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi$1()V

    return-void
.end method
