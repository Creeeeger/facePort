.class public final synthetic Lcom/samsung/android/settings/password/LockContentViewInsetsCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;

.field public final synthetic f$1:Landroid/graphics/Insets;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;Landroid/graphics/Insets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;

    iput-object p2, p0, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Insets;

    iget-object v0, v0, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;->mView:Landroid/view/View;

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Landroid/graphics/Insets;->top:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
