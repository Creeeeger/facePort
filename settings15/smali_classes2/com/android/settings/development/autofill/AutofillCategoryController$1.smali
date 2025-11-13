.class public final Lcom/android/settings/development/autofill/AutofillCategoryController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/development/autofill/AutofillCategoryController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/autofill/AutofillCategoryController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillCategoryController$1;->this$0:Lcom/android/settings/development/autofill/AutofillCategoryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/development/autofill/AutofillCategoryController$1;->this$0:Lcom/android/settings/development/autofill/AutofillCategoryController;

    iget-object p1, p1, Lcom/android/settings/development/autofill/AutofillCategoryController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/development/autofill/AutofillCategoryController$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/development/autofill/AutofillCategoryController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/autofill/AutofillCategoryController$1;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
