.class public final synthetic Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/UnificationConfirmationDialog;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/UnificationConfirmationDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/UnificationConfirmationDialog;

    iput p2, p0, Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/UnificationConfirmationDialog;

    iget p0, p0, Lcom/android/settings/security/UnificationConfirmationDialog$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
