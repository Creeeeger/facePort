.class public final synthetic Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140d12

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
